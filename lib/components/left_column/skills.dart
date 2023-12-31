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
              skillName: 'React Native',
              skillValue: 0.9),
          DetailSkill(
              sizingInformation: sizingInformation,
              skillName: 'TypeScript',
              skillValue: 0.9),
          DetailSkill(
              sizingInformation: sizingInformation,
              skillName: 'JavaScript',
              skillValue: 0.9),
          DetailSkill(
              sizingInformation: sizingInformation,
              skillName: 'React',
              skillValue: 0.9),
          DetailSkill(
              sizingInformation: sizingInformation,
              skillName: 'Flutter-Dart',
              skillValue: 0.7),
          DetailSkill(
              sizingInformation: sizingInformation,
              skillName: 'Kotlin',
              skillValue: 0.6),
          DetailSkill(
              sizingInformation: sizingInformation,
              skillName: 'Swift',
              skillValue: 0.5),
          DetailSkill(
              sizingInformation: sizingInformation,
              skillName: 'Python',
              skillValue: 0.6),
          DetailSkill(
              sizingInformation: sizingInformation,
              skillName: 'Kotlin',
              skillValue: 0.6),
           DetailSkill(
              sizingInformation: sizingInformation,
              skillName: 'Nodejs',
              skillValue: 0.7),
           DetailSkill(
              sizingInformation: sizingInformation,
              skillName: 'AWS',
              skillValue: 0.5),
          DetailSkill(
              sizingInformation: sizingInformation,
              skillName: 'PostgreSQL',
              skillValue: 0.6),
        ],
      ),
    );
  }
}
