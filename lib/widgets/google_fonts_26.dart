import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GooglePage extends StatelessWidget {
  const GooglePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Google Fonts',
          style: GoogleFonts.oswald(color: Colors.white, fontSize: 40),
        ),
        SizedBox(height: 50),
        Text(
          'Flutter makes it easy and fast to build Apps',
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ],
    );
  }
}
