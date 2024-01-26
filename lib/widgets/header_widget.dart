import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/core/colors.dart';
import 'package:my_portfolio/widgets/custom_section_container.dart';
import 'package:my_portfolio/widgets/space_width_between.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
        final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return SectionCustomContainer(
              width: size.width,
              color: primaryColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      text: "Sharath ",
                      style: theme.textTheme.bodyMedium,
                      children: [
                        TextSpan(
                          text: "Kumar",
                          style: GoogleFonts.lato(color: Colors.black,fontSize: 30,fontWeight: FontWeight.w800,),
                          
                        )
                      ]
                    ),
                  ),
                  SectionCustomContainer(
                    width: size.width/2,
                    color: primaryColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("About",style: theme.textTheme.titleSmall,),
                        const SpaceWidthBetween(),
                        Text("Projects",style: theme.textTheme.titleSmall,),
                        const SpaceWidthBetween(),
                        Text("Resume",style: theme.textTheme.titleSmall,),
                        const SpaceWidthBetween(),
                        Text("Skills",style: theme.textTheme.titleSmall,),
                        const SpaceWidthBetween(),
                       
                        
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Center(
                      child:  Text("Contact Me",style: theme.textTheme.titleSmall,),
                    ),
                  ),
                ],
              ),
            );
  }
}