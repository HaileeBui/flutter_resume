import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:resume/components/right_column/content_widget.dart';

import '../../main.dart';
import '../../utils.dart';

class Projects extends StatelessWidget {
  const Projects({
    super.key,
    required this.sizingInformation,
  });

  final SizingInformation sizingInformation;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ContentWidget(
            sizingInformation: sizingInformation, contentTitle: 'projects'),
        ProjectContent(
            sizingInformation: sizingInformation,
            title: "Coiniverse (developed as team)",
            description:
                'ReactNative - JavaScript - Redux-Saga - Firebase - FCM - AppCenter - Contentfuls',
            link:
                'https://apps.apple.com/us/app/coiniverse-collect-coins/id1538929667'),
        ProjectContent(
            sizingInformation: sizingInformation,
            title: "Financial application (developed as team)",
            description: 'React - TypeScript - Nodejs - Heroku - PostgreSQL',
            link: ''),
        ProjectContent(
            sizingInformation: sizingInformation,
            title: "HIIT counter (personal project)",
            description: 'Flutter - Dart - Firebase',
            link: 'https://github.com/MistyBui/timer/tree/dev'),
        ProjectContent(
            sizingInformation: sizingInformation,
            title: "movie-api (personal project)",
            description: 'Python - Django - PostgreSQL',
            link: 'https://github.com/MistyBui/movie-api'),
        ProjectContent(
            sizingInformation: sizingInformation,
            title: "Step tracker (school project)",
            description: 'Kotlin - sensor',
            link: 'https://github.com/MistyBui/StepTracker'),
        Text(
          'For more projects code, please checkout my github',
          style: GoogleFonts.montserrat(
              fontWeight: FontWeight.w600, fontSize: 20, color: primaryColor),
        )
      ],
    );
  }
}

class ProjectContent extends StatelessWidget {
  const ProjectContent({
    super.key,
    required this.sizingInformation,
    required this.title,
    required this.description,
    required this.link,
  });

  final SizingInformation sizingInformation;
  final String title;
  final String description;
  final String link;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: sizingInformation.deviceScreenType != DeviceScreenType.desktop
          ? const EdgeInsets.symmetric(horizontal: 16)
          : const EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title.toUpperCase(),
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: primaryColor)),
          Wrap(
            children: [
              Text(description,
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w200,
                      fontSize: 20,
                      color: primaryColor)),
            ],
          ),
          link.isNotEmpty
              ? RichText(
                  text: TextSpan(children: [
                  TextSpan(
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w200,
                          fontSize: 20,
                          color: primaryColor),
                      text: "To learn more "),
                  TextSpan(
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w200,
                          fontSize: 20,
                          color: Colors.blue),
                      text: "Click here",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () async {
                          Utils.launchURL(link);
                        })
                ]))
              : const SizedBox()
        ],
      ),
    );
  }
}
