import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class AutoSizePackage extends StatelessWidget {
  const AutoSizePackage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.black87, borderRadius: BorderRadius.circular(20)),
      width: 400,
      height: 200,
      child: AutoSizeText(
        'Flutter is an open-source UI software development Kit created by Google to build nativley apps for ios, android web & desktop from a single dart codebase',
        style: TextStyle(fontSize: 30),
        maxLines: 5,
      ),
    );
  }
}
