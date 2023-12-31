import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:resume/components/left_column/languages.dart';
import 'package:resume/components/left_column/skills.dart';
import 'package:resume/components/left_column/socials.dart';

import '../../main.dart';
import './about_me.dart';
import './avatar.dart';
import '../heigh20.dart';

class LeftColumn extends StatelessWidget {
  final SizingInformation sizingInformation;

  const LeftColumn(this.sizingInformation, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width / 3 * 1,
        color: primaryColor,
        child: Column(
          children: [
            PersonalAvatar(),
            Height20(),
            AboutMe(sizingInformation: sizingInformation),
            Height20(),
            Skills(sizingInformation: sizingInformation),
            Height20(),
            Languages(sizingInformation: sizingInformation),
            Height20(),
            Socials(sizingInformation: sizingInformation),
            Height20(),
          ],
        ));
  }
}
