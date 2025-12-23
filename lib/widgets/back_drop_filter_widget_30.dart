import 'dart:ui';
import 'package:flutter/material.dart';

class BackDropFilterWidget extends StatelessWidget {
  const BackDropFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            'https://i.pinimg.com/736x/73/c4/6c/73c46cef08c871f17f541d68a90e7e1f.jpg',
            fit: BoxFit.cover,
          ),
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 10,
              sigmaY: 10,
            ),
            child: Container(
              color: Colors.black12,
            ),
          ),
        ],
      ),
    );
  }
}
