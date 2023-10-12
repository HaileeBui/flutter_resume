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
                'sjsh',
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w200,
                    fontSize: 30,
                    color: primaryColor),
              ),),
          FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                'phone : ',
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w200,
                    fontSize: 30,
                    color: primaryColor),
              ),),
          FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                'email',
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w200,
                    fontSize: 30,
                    color: primaryColor),
              ))
        ],
      ),
    );
  }
}