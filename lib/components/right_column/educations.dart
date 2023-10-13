import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:resume/components/right_column/content_widget.dart';
import 'package:resume/components/right_column/title_description_widget.dart';

class Educations extends StatelessWidget {
  const Educations({
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
            sizingInformation: sizingInformation, contentTitle: 'educations'),
        TitleDescriptionWidget(
          sizingInformation: sizingInformation,
          title: 'Metropolia University of Applied Sciences (2018-2022)',
          description: "Bachelor's degree in Information Technology",
        ),
        TitleDescriptionWidget(
          sizingInformation: sizingInformation,
          title: 'Haaga-Helia University of Applied Sciences (2015-2017)',
          description: "Bachelor's degree in International Business",
        ),
      ],
    );
  }
}
