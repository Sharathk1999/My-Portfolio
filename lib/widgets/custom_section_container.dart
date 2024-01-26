import 'package:flutter/material.dart';

class SectionCustomContainer extends StatelessWidget {
  
  final double? width;
  final double? height;
  final Color? color;
  final Widget? child;
  const SectionCustomContainer({super.key, this.width, this.color, this.child, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.all(25),
      decoration:  BoxDecoration(color: color),
      child: child,
    );
  }
}
