import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../main.dart';

class Languages extends StatelessWidget {
  const Languages({
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
                    'Languages'.toUpperCase(),
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
          Text(
            'English - Fluent',
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
          Text(
            'Finnish - Intermediate',
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
        ],
      ),
    );
  }
}
