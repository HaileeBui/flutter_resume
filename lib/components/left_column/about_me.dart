import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:resume/main.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({
    super.key,
    required this.sizingInformation,
  });

  final SizingInformation sizingInformation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Row(children: [
              Row(
                children: [
                  Text(
                    'about me'.toUpperCase(),
                    style: GoogleFonts.montserrat(
                      fontSize: 50,
                      color: sizingInformation.deviceScreenType ==
                              DeviceScreenType.desktop
                          ? Colors.white
                          : Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              )
            ]),
          ),
          Center(
            child: Text(
              'Mobile Developer | Software Developer \nCan-do attitude and goal-oriented. Dedicated to build applications with immense passion.',
              textAlign:
                  sizingInformation.deviceScreenType == DeviceScreenType.mobile
                      ? TextAlign.justify
                      : TextAlign.left,
              style: GoogleFonts.montserrat(
                  fontSize: 20,
                  color: sizingInformation.deviceScreenType ==
                          DeviceScreenType.desktop
                      ? Colors.white
                      : primaryColor,
                  fontWeight: FontWeight.w100),
            ),
          )
        ],
      ),
    );
  }
}
