import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimateDoPackage extends StatelessWidget {
  const AnimateDoPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      //delay: const Duration(seconds: 2),
      duration: const Duration(milliseconds: 1500),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.blue[200], borderRadius: BorderRadius.circular(12)),
        child: Text('Animate Do',
            style: GoogleFonts.merriweather(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
