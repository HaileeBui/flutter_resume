import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

import './detail_skill.dart';

class Skills extends StatelessWidget {
  const Skills({
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
                    'skills'.toUpperCase(),
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
          DetailSkill(
              sizingInformation: sizingInformation,
              skillName: 'TypeScript',
              skillValue: 0.5),
          DetailSkill(
              sizingInformation: sizingInformation,
              skillName: 'TypeScript',
              skillValue: 0.5),
          DetailSkill(
              sizingInformation: sizingInformation,
              skillName: 'TypeScript',
              skillValue: 0.5),
          DetailSkill(
              sizingInformation: sizingInformation,
              skillName: 'TypeScript',
              skillValue: 0.5),
          DetailSkill(
              sizingInformation: sizingInformation,
              skillName: 'TypeScript',
              skillValue: 0.5),
        ],
      ),
    );
  }
}
