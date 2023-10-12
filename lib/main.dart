import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'components/left_column/left_column.dart';
import 'components/right_column/right_column.dart';

const primaryColor = Colors.black;
const backgroundColor = Colors.orange;

void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: ResponsiveBuilder(
            builder: (context, sizingInformation) {
              return sizingInformation.deviceScreenType ==
                      DeviceScreenType.desktop
                  ? IntrinsicHeight(
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
                    )
                  : Container(color: backgroundColor);
            },
          ),
        ),
      ),
    );
  }
}

