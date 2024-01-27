import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/core/colors.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:15.0),
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 4.0,
        color: primaryColor,
        surfaceTintColor: primaryColor,
        child: Container(
          height: 350,
          width: 230,
          child: Stack(
            children: [
              Container(
                height: 250,
                
                decoration: const BoxDecoration(
                  image: DecorationImage(
               
                    image: AssetImage(
                      "assets/images/news_app.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 25,
                left: 20,
                  child: Text(
                "News App",
                style: GoogleFonts.lato(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.black
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
