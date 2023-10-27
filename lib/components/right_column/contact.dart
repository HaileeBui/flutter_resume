import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume/main.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                'haileebuij@gmail.com',
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w300,
                    fontSize: 30,
                    color: primaryColor),
              ),),
          FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                '+358 40 171 0551',
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w300,
                    fontSize: 30,
                    color: primaryColor),
              ),),
          FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                'Särkiniementie 7D54, 00210, Helsinki',
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w300,
                    fontSize: 30,
                    color: primaryColor),
              ))
        ],
      ),
    );
  }
}