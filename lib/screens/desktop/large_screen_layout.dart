import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/core/colors.dart';
import 'package:my_portfolio/widgets/button_widget.dart';
import 'package:my_portfolio/widgets/custom_section_container.dart';
import 'package:my_portfolio/widgets/header_widget.dart';
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
        padding: EdgeInsets.all(size.width * 0.025),
        child: Column(
          children: [
            /*
            * * Header Section  
             */
            const HeaderWidget(),
            const SizedBox(
              height: 120,
            ),
            /*
            * * Intro Section (name,role, image and know more) 
             */
            SectionCustomContainer(
              width: size.width,
              color: primaryColor,
              child: Row(
                children: [
                  Expanded(
                    child: SectionCustomContainer(
                      color: primaryColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi, I am Sharath",
                            style: theme.textTheme.bodySmall,
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            "Flutter Developer",
                            style: GoogleFonts.lato(
                              color: Colors.black,
                              fontSize: 80,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            "From India",
                            style: GoogleFonts.lato(
                              color: Colors.black38,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          const SpaceHeightBetween(),
                          ButtonWidget(
                            size: size,
                            btnName: "Hire me",
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: SectionCustomContainer(
                      color: primaryColor,
                      child: Container(
                        width: size.width*0.40,
                        height:size.height*0.40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 1.5,color: buttonColor),
                          color: buttonColor.withOpacity(0.2),
                          image:const DecorationImage(
                            image: AssetImage(
                              "assets/images/profile_img_bg.png",
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
