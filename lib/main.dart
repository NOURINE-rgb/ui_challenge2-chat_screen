import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_challenge2/screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ui challenge',
      theme: ThemeData().copyWith(
        primaryColor: const Color(0xff5b61b9),
        textTheme: GoogleFonts.quicksandTextTheme().copyWith(
          titleLarge: GoogleFonts.quicksand(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 35),
          bodyLarge: GoogleFonts.quicksand(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18),
          labelLarge:
              GoogleFonts.quicksand(color: Colors.grey.shade900, fontSize: 15),
        ),
      ),
      home: const MainScreen(),
    );
  }
}
