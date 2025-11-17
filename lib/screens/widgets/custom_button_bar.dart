import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:performance_anaylsis_final/constant/styles.dart';

class CustomButtonBar extends StatelessWidget {
  const CustomButtonBar({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    final List<BarItem> barItemlist = [
      BarItem(icon: FontAwesomeIcons.house, label: 'Home'),
      BarItem(icon: Icons.scoreboard_rounded, label: 'Statistics'),
      BarItem(icon: FontAwesomeIcons.brain, label: 'IQ'),
      BarItem(icon: FontAwesomeIcons.person, label: 'profile'),
    ];
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Container(
          padding: EdgeInsets.all(8),
          color: Color(0xff232826).withValues(alpha: 0.95),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(4, (index) {
              final item = barItemlist[index];
              final isSelected = index == currentIndex;
              return GestureDetector(
                child:
                    isSelected
                        ? AnimatedContainer(
                          curve: Curves.easeOut,
                          duration: Duration(milliseconds: 300),
                          decoration: BoxDecoration(
                            color:
                                isSelected
                                    ? kprimaryColor
                                    : Color.fromARGB(255, 63, 66, 66),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          padding: EdgeInsets.all(16),

                          child: Row(
                            children: [
                              Icon(
                                item.icon,
                                size: 22,
                                color: isSelected ? Colors.black : Colors.white,
                              ),
                              SizedBox(width: 10),
                              Text(
                                item.label,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Cairo",
                                  color:
                                      isSelected ? Colors.black : Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        )
                        :
                        // :
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Color(0xff343839),
                          child: Icon(item.icon, size: 22),
                        ),
              );
            }),
          ),
        ),
      ),
    );
  }
}

class BarItem {
  final IconData icon;
  final String label;

  BarItem({required this.icon, required this.label});
}

//  BottomNavigationBar(
//           type: BottomNavigationBarType.fixed,
//           items: [
//             BottomNavigationBarItem(
//               icon: FaIcon(FontAwesomeIcons.house),
//               label: 'Home',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.scoreboard_rounded),
//               label: 'Home',
//             ),
//             BottomNavigationBarItem(
//               icon: FaIcon(FontAwesomeIcons.brain),
//               label: 'Home',
//             ),
//             BottomNavigationBarItem(
//               icon: FaIcon(FontAwesomeIcons.person),
//               label: 'Home',
//             ),
//           ],
//         ),
