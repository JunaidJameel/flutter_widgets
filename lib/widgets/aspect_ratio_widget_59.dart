import 'package:flutter/material.dart';

class AspectRatioWidget extends StatelessWidget {
  const AspectRatioWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Image.network(
        'https://i.pinimg.com/736x/b1/35/5a/b1355a1c31e931c38bf2203a43bb2289.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}
