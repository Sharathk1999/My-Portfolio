import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/desktop/large_screen_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 495) {
        return Scaffold();
      }else{
        return LargeScreenLayout();
      }
    },);
  }
}