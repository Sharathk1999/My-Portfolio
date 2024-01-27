import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/core/colors.dart';
import 'package:my_portfolio/core/data.dart';
import 'package:my_portfolio/core/text_style.dart';
import 'package:my_portfolio/widgets/about_me_widget.dart';
import 'package:my_portfolio/widgets/button_widget.dart';
import 'package:my_portfolio/widgets/custom_section_container.dart';
import 'package:my_portfolio/widgets/education_info_widget.dart';
import 'package:my_portfolio/widgets/header_widget.dart';
import 'package:my_portfolio/widgets/intro_widget.dart';
import 'package:my_portfolio/widgets/professional_info_widget.dart';
import 'package:my_portfolio/widgets/project_card.dart';
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
        // padding: EdgeInsets.all(size.width * 0.010),
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
                color: secondaryColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Skills",
                      style: theme.textTheme.bodyLarge,
                    ),
                    const SpaceHeightBetween(
                      height: 25,
                    ),
                    Row(
                      children: [
                        TechnologiesInfoWidget(theme: theme),
                        ConceptsInfoWidget(theme: theme),
                        LanguagesInfoWidget(theme: theme),
                      ],
                    )
                  ],
                ),
              ),
              const SpaceHeightBetween(
                height: 25,
              ),
              /* 
                * * Projects section
              */
              SectionCustomContainer(
                width: size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Completed Projects",
                      style: theme.textTheme.bodyLarge,
                    ),
                    const SpaceHeightBetween(
                      height: 25,
                    ),
                    SectionCustomContainer(
                      height: 380,
                     
                      child: ScrollConfiguration(
                        behavior: ScrollConfiguration.of(context).copyWith(
                          dragDevices: {
                            PointerDeviceKind.touch,
                            PointerDeviceKind.mouse,
                          }
                        ),
                        child: ListView.builder(
                          
                          scrollDirection: Axis.horizontal,
                                             
                          itemCount: 15,
                          itemBuilder: (context, index) {
                            return const ProjectCard();
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
               /* 
                * * Hire me section
              */
              SectionCustomContainer(
                color: secondaryColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Looking for a flutter developer",style: theme.textTheme.bodyLarge,),
                    ButtonWidget(size: size,btnName: "Hire me",),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class LanguagesInfoWidget extends StatelessWidget {
  const LanguagesInfoWidget({
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
            "Languages",
            style: theme.textTheme.bodySmall,
          ),
          const SpaceHeightBetween(
            height: 25,
          ),
          FractionallySizedBox(
            widthFactor: 0.60,
            child: Card(
              elevation: 4.0,
              color: primaryColor,
              surfaceTintColor: primaryColor,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: languages.length,
                itemBuilder: (context, index) {
                  return FractionallySizedBox(
                    widthFactor: 0.70,
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 50,
                      child: Center(
                        child: ListTile(
                          leading: const Icon(
                            CupertinoIcons.star,
                            color: buttonColor,
                            size: 16,
                          ),
                          title: Text(
                            languages[index],
                            style: bodyStyle,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ConceptsInfoWidget extends StatelessWidget {
  const ConceptsInfoWidget({
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
            "Concepts",
            style: theme.textTheme.bodySmall,
          ),
          const SpaceHeightBetween(
            height: 25,
          ),
          FractionallySizedBox(
            widthFactor: 0.60,
            child: Card(
              elevation: 4.0,
              color: primaryColor,
              surfaceTintColor: primaryColor,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: concepts.length,
                itemBuilder: (context, index) {
                  return FractionallySizedBox(
                    widthFactor: 0.70,
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 50,
                      child: Center(
                        child: ListTile(
                          leading: const Icon(
                            CupertinoIcons.star,
                            color: buttonColor,
                            size: 16,
                          ),
                          title: Text(
                            concepts[index],
                            style: bodyStyle,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TechnologiesInfoWidget extends StatelessWidget {
  const TechnologiesInfoWidget({
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
            "Technologies",
            style: theme.textTheme.bodySmall,
          ),
          const SpaceHeightBetween(
            height: 25,
          ),
          FractionallySizedBox(
            widthFactor: 0.60,
            child: Card(
              elevation: 4.0,
              color: primaryColor,
              surfaceTintColor: primaryColor,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: technologies.length,
                itemBuilder: (context, index) {
                  return FractionallySizedBox(
                    widthFactor: 0.70,
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 50,
                      child: Center(
                        child: ListTile(
                          leading: const Icon(
                            CupertinoIcons.star,
                            color: buttonColor,
                            size: 16,
                          ),
                          title: Text(
                            technologies[index],
                            style: bodyStyle,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
