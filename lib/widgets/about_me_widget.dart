

import 'package:flutter/material.dart';
import 'package:my_portfolio/core/text_style.dart';
import 'package:my_portfolio/widgets/custom_section_container.dart';
import 'package:my_portfolio/widgets/space_height_between.dart';

class AboutMeWidget extends StatelessWidget {
  const AboutMeWidget({
    super.key,
    required this.size,
    required this.theme,
  });

  final Size size;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return SectionCustomContainer(
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "About",
            style: theme.textTheme.bodyLarge,
          ),
          const SpaceHeightBetween(
            height: 25,
          ),
          Text(
            "I am a dedicated Flutter Developer with a passion for creating innovative mobile applications. My experience in developing secure and feature-rich apps. Proficient in a variety of languages and technologies, including Dart, Flutter, and Firebase, I bring a versatile skill set to every project. I am currently pursuing a Bachelor of Computer Applications (BCA) degree, which has equipped me with a strong foundation in programming and problem-solving skills. I am constantly seeking to expand my knowledge and skills, as evidenced by my recent certification in Flutter & Dart. With a keen interest in reading, app development, and staying active through football, I approach every challenge with creativity and determination.",
            style: bodyStyle,
          ),
        ],
      ),
    );
  }
}
