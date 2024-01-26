import 'package:flutter/material.dart';
import 'package:my_portfolio/core/colors.dart';

class ButtonWidget extends StatelessWidget {
  final Size? size;
  final String btnName;
  const ButtonWidget({super.key,required this.size, this.btnName="Submit",});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1,color: buttonColor,),
        borderRadius: BorderRadius.circular(10),
        color: primaryColor,
      ),
      height: 50,
      width: size!.width*0.10,
      child: Center(
        child: Text(btnName,style: theme.textTheme.bodySmall,),
      ),
    );
  }
}