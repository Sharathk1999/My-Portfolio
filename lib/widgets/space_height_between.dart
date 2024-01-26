import 'package:flutter/material.dart';

class SpaceHeightBetween extends StatelessWidget {
  final double height;

  const SpaceHeightBetween({super.key,this.height=25});

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
     
      height: height,
    );
  }
}