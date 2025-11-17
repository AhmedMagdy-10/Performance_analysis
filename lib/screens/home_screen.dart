import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:performance_anaylsis_final/screens/widgets/custom_button_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff010a09),
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: false,

        title: Row(
          children: [
            CircleAvatar(backgroundColor: Colors.blue, radius: 28),
            SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mo Salah',
                  style: TextStyle(
                    fontSize: 19,
                    fontFamily: "Cairo",
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'LiverPool',

                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Cairo",
                    color: const Color.fromARGB(255, 206, 206, 206),
                  ),
                ),
              ],
            ),
            Spacer(),
            CircleAvatar(
              radius: 20,
              backgroundColor: Color(0xff232826).withValues(alpha: 0.95),
              child: IconButton(
                onPressed: () {},
                icon: FaIcon(FontAwesomeIcons.bell, size: 20),
              ),
            ),
          ],
        ),
      ),
      body: Column(),
      bottomNavigationBar: CustomButtonBar(currentIndex: 1),
    );
  }
}
