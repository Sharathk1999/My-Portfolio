import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/colors.dart';
import 'package:my_portfolio/core/text_style.dart';
import 'package:my_portfolio/widgets/space_height_between.dart';

class ProfessionalInfoWidget extends StatelessWidget {
  const ProfessionalInfoWidget({
    super.key,
    required this.theme,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Professional Experience",
            style: theme.textTheme.bodySmall,
          ),
          const SpaceHeightBetween(
            height: 25,
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 1,
            itemBuilder: (context, index) {
              return FractionallySizedBox(
                widthFactor: 0.70,
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 120,
                  child: Card(
                    elevation: 4.0,
                    surfaceTintColor: primaryColor,
                    color: primaryColor,
                    child: Center(
                      child: ListTile(
                        leading: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(width: 1.5,color: buttonColor),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            CupertinoIcons.briefcase,
                            color: buttonColor,
                          ),
                        ),
                        title: Text(
                          "Intership-Bootcamp | Mobile App Development using Flutter",
                          style: bodyStyle,
                        ),
                        subtitle: Text(
                          "12 months",
                          style: bodyStyle,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}