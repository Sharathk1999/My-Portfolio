import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/core/colors.dart';
import 'package:my_portfolio/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio',
      theme: ThemeData(
       scaffoldBackgroundColor: primaryColor,
       textTheme: TextTheme(
        bodySmall: GoogleFonts.lato(color: textColor,fontSize: 20,fontWeight: FontWeight.w400),
        bodyMedium: GoogleFonts.lato(color: textColor,fontSize: 30,fontWeight: FontWeight.w800),
        bodyLarge: GoogleFonts.lato(color: textColor,fontSize: 34,fontWeight: FontWeight.w800),
        titleSmall: GoogleFonts.lato(color: textColor,fontSize: 18,fontWeight: FontWeight.w400),
       )
      ),
      home: const HomeScreen(),
    );
  }
}

