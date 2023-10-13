import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:resume/components/right_column/contact.dart';
import 'package:resume/components/right_column/experiences.dart';
import 'package:resume/components/right_column/name_widget.dart';
import 'package:resume/components/right_column/projects.dart';

import 'educations.dart';

class RightColumn extends StatelessWidget {
  final SizingInformation sizingInformation;

  const RightColumn(this.sizingInformation, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          margin: const EdgeInsets.only(top: 30),
          child: Column(
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
          ),
        ),
      ),
    );
  }
}
