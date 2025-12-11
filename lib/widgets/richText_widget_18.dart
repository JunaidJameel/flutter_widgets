import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w500, color: Colors.black87),
          children: [
            TextSpan(
              text: 'T',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: 'his text is',
              style: TextStyle(fontSize: 30),
            ),
            TextSpan(
              text: '\nstyled ',
              style: TextStyle(
                  fontSize: 30, color: Colors.red, fontWeight: FontWeight.w600),
            ),
            TextSpan(
              text: 'beautifully with',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
            TextSpan(
              text: '\nRichText',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ]),
    );
  }
}
