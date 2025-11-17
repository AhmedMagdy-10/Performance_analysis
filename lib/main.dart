import 'package:flutter/material.dart';
import 'package:performance_anaylsis_final/screens/home_screen.dart';

void main() {
  runApp(const FootballAnalystApp());
}

class FootballAnalystApp extends StatelessWidget {
  const FootballAnalystApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      home: HomeScreen(),
    );
  }
}
