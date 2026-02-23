import 'package:flutter/material.dart';
import 'package:fluttermoji/fluttermoji.dart';

class EmojiPackage extends StatelessWidget {
  const EmojiPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FluttermojiCircleAvatar(
          radius: 100,
        ),
        SizedBox(height: 70),
        Expanded(child: FluttermojiCustomizer()),
      ],
    );
  }
}
