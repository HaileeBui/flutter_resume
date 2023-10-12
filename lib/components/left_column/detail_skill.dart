import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../main.dart';

class DetailSkill extends StatelessWidget {
  const DetailSkill({
    super.key,
    required this.sizingInformation,
    required this.skillName,
    required this.skillValue,
  });

  final SizingInformation sizingInformation;
  final String skillName;
  final double skillValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(children: [
        Text(
          skillName,
          style: GoogleFonts.montserrat(
              fontSize: 20,
              color:
                  sizingInformation.deviceScreenType == DeviceScreenType.desktop
                      ? Colors.white
                      : primaryColor,
              fontWeight: FontWeight.w100),
        ),
        const SizedBox(
          width: 50,
        ),
        Expanded(
            child: LinearPercentIndicator(
          percent: skillValue,
          backgroundColor: primaryColor,
          progressColor: Colors.white,
        ))
      ]),
    );
  }
}
