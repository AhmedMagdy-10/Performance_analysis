import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:performance_anaylsis_final/constant/styles.dart';
import 'package:performance_anaylsis_final/data/cubits/main_cubit.dart';
import 'package:performance_anaylsis_final/data/cubits/main_cubit_states.dart';

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
    return BlocBuilder<MainCubit, MainCubitStates>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFFFFFFF).withValues(alpha: 0.25),
                    Color(0xFFFFFFFF).withValues(alpha: 0.25),
                  ],
                ),
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(4, (index) {
                  final item = barItemlist[index];
                  final isSelected = index == currentIndex;
                  return GestureDetector(
                    onTap: () {
                      BlocProvider.of<MainCubit>(context).toglePages(index);
                    },
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
                                    color:
                                        isSelected
                                            ? Colors.black
                                            : Colors.white,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    item.label,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Cairo",
                                      color:
                                          isSelected
                                              ? Colors.black
                                              : Colors.white,
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
      },
    );
  }
}

class BarItem {
  final IconData icon;
  final String label;

  BarItem({required this.icon, required this.label});
}
