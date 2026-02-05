import 'package:flutter/material.dart';

class GradientTextWidget extends StatelessWidget {
  const GradientTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Gradient Text',
        style: TextStyle(
          fontSize: 45,
          fontWeight: FontWeight.bold,
          //color: Colors.black,
          foreground: Paint()
            ..shader = LinearGradient(
              colors: [
                Colors.black,
                Colors.purple,
                Colors.red[600]!,
              ],
            ).createShader(Rect.fromLTRB(50, 0, 300, 70)),
        ),
      ),
    );
  }
}
