import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../utils.dart';

class Socials extends StatelessWidget {
  const Socials({
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
                      'socials'.toUpperCase(),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  color: Colors.white,
                  iconSize: 40,
                  icon: const Icon(FontAwesomeIcons.github),
                  onPressed: () {
                    Utils.launchURL(
                        "https://github.com/HaileeBui");
                  },
                ),
                const SizedBox(width: 20.0),
                IconButton(
                  color: Colors.white,
                  iconSize: 40,
                  icon: const Icon(FontAwesomeIcons.linkedin),
                  onPressed: () {
                    Utils.launchURL("https://www.linkedin.com/in/haileebui/");
                  },
                ),
              ],
            ),
          ],
        ));
  }
}
