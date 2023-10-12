import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:resume/components/right_column/right_column.dart';

import '../main.dart';
import 'left_column/left_column.dart';

class DesktopUI extends StatelessWidget {
  const DesktopUI({
    super.key, required this.sizingInformation,
  });

  final SizingInformation sizingInformation;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Container(
        color: backgroundColor,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LeftColumn(sizingInformation),
            RightColumn(sizingInformation),
          ],
        ),
      ),
    );
  }
}