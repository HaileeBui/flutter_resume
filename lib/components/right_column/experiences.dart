import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:resume/components/right_column/content_widget.dart';
import 'package:resume/components/right_column/title_description_widget.dart';

class Experiences extends StatelessWidget {
  const Experiences({
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
            sizingInformation: sizingInformation, contentTitle: 'experiences'),
        TitleDescriptionWidget(
          sizingInformation: sizingInformation,
          title: 'Qvik (08.2022 - now)',
          description: 'Mobile developer',
        ),
        TitleDescriptionWidget(
          sizingInformation: sizingInformation,
          title: 'Nordea finance (12.2021 - 08.2022)',
          description: 'IT Developer',
        ),
        TitleDescriptionWidget(
          sizingInformation: sizingInformation,
          title: 'Wärtsilä Oy (05.2021 - 08.2021)',
          description: 'Software developer trainee',
        ),
        TitleDescriptionWidget(
          sizingInformation: sizingInformation,
          title: 'Utelias Oy (05.20210 - 08.2020)',
          description: 'Mobile developer intern',
        ),
      ],
    );
  }
}
