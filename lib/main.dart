import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:performance_anaylsis_final/data/cubits/main_cubit.dart';
import 'package:performance_anaylsis_final/screens/main_screen.dart';

void main() {
  runApp(const FootballAnalystApp());
}

class FootballAnalystApp extends StatelessWidget {
  const FootballAnalystApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MainCubit>(
      create: (context) => MainCubit(),
      child: MaterialApp(
        title: 'Elite Performance Analyst',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          primaryColor: Colors.blue[800],

          scaffoldBackgroundColor: Colors.grey[900],

          cardTheme: CardThemeData(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        home: MainScreen(),
      ),
    );
  }
}
