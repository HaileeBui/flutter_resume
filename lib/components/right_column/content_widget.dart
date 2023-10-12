import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:resume/components/right_column/title_description_widget.dart';
import 'package:resume/main.dart';

class ContentWidget extends StatelessWidget {
  const ContentWidget({
    super.key,
    required this.sizingInformation,
    required this.contentTitle,
  });

  final SizingInformation sizingInformation;
  final String contentTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 50),
          padding:
              sizingInformation.deviceScreenType != DeviceScreenType.desktop
                  ? const EdgeInsets.symmetric(horizontal: 16)
                  : const EdgeInsets.all(0),
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      contentTitle.toUpperCase(),
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w400,
                          fontSize: 50,
                          color: Colors.black87),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        TitleDescriptionWidget(
          sizingInformation: sizingInformation,
          title: 'Qvik (2022-now)',
          description: 'Lorem ipsum',
        ),
        TitleDescriptionWidget(
          sizingInformation: sizingInformation,
          title: 'Nordea finance (2021-2022)',
          description: 'Lorem ipsum',
        ),
      ],
    );
  }
}
