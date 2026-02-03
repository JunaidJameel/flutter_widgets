import 'dart:ui';

import 'package:flutter/material.dart';

class GlassMorphismWidget extends StatelessWidget {
  const GlassMorphismWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://i.pinimg.com/736x/8b/84/8e/8b848ee8baf385d490fc477d033d50de.jpg'),
          fit: BoxFit.fill,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(30),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                height: 420,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(30),
                    border:
                        Border.all(color: Colors.white.withValues(alpha: .2))),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
