import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:resume/components/heigh20.dart';
import 'package:resume/components/left_column/avatar.dart';
import 'package:resume/components/left_column/languages.dart';
import 'package:resume/components/left_column/skills.dart';
import 'package:resume/components/right_column/contact.dart';
import 'package:resume/components/right_column/educations.dart';
import 'package:resume/components/right_column/experiences.dart';
import 'package:resume/components/right_column/name_widget.dart';
import 'package:resume/components/right_column/projects.dart';

import 'left_column/about_me.dart';

class MobileUI extends StatelessWidget {
  const MobileUI({
    super.key,
    required this.sizingInformation,
  });

  final SizingInformation sizingInformation;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PersonalAvatar(),
        Height20(),
        AboutMe(sizingInformation: sizingInformation),       
        Height20(),
        Skills(sizingInformation: sizingInformation),
        Height20(),
        Languages(sizingInformation: sizingInformation),
        Height20(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [NameWidget(sizingInformation), const ContactInfo()],
            ),
            Experiences(sizingInformation: sizingInformation),
            Educations(sizingInformation: sizingInformation),
            Projects(sizingInformation: sizingInformation),
          ],
        )
      ],
    );
  }
}
