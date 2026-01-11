import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimatedTextKitPackage extends StatelessWidget {
  const AnimatedTextKitPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedTextKit(
        animatedTexts: [
          TyperAnimatedText(
            'Making Apps with Flutter is 🔥',
            textStyle: GoogleFonts.robotoCondensed(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
        //totalRepeatCount: 1,
        repeatForever: true,
      ),
    );
  }
}
