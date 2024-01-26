import 'package:flutter/material.dart';
import 'package:my_portfolio/core/colors.dart';
import 'package:my_portfolio/widgets/about_me_widget.dart';
import 'package:my_portfolio/widgets/custom_section_container.dart';
import 'package:my_portfolio/widgets/education_info_widget.dart';
import 'package:my_portfolio/widgets/header_widget.dart';
import 'package:my_portfolio/widgets/intro_widget.dart';
import 'package:my_portfolio/widgets/professional_info_widget.dart';
import 'package:my_portfolio/widgets/space_height_between.dart';

class LargeScreenLayout extends StatelessWidget {
  const LargeScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        padding: EdgeInsets.all(size.width * 0.010),
        child: SingleChildScrollView(
          child: Column(
            children: [
              /*
              * * Header Section  
               */
              const HeaderWidget(),
              const SpaceHeightBetween(
                height: 110,
              ),
              /*
              * * Intro Section (name,role, image and know more) 
               */
              IntroWidget(size: size, theme: theme),
              const SpaceHeightBetween(
                height: 100,
              ),
              /* 
                * * About section
               */

              AboutMeWidget(size: size, theme: theme),
              const SpaceHeightBetween(
                height: 25,
              ),

              /* 
                * * Professional Experience and Education Details section
               */
              SectionCustomContainer(
                width: size.width,
                color: primaryColor,
                child: Row(
                  children: [
                    ProfessionalInfoWidget(theme: theme),
                    EducationInfoWidget(theme: theme),
                  ],
                ),
              ),

               /* 
                * * Skills section
               */
              SectionCustomContainer(
                width: size.width,
                child: Column(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
