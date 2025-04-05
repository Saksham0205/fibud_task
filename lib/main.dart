import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() => runApp(FibudApp());

class FibudApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fibud',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Pretendard',
        primaryColor: const Color(0xFF6E00FF),
        scaffoldBackgroundColor: const Color(0xFF121212),
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
          bodyLarge: TextStyle(color: Colors.white),
        ),
      ),
      home: HomeScreen(),
    );
  }
}


