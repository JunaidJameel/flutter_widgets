import 'package:flutter/material.dart';

class MediaQueryWidget extends StatelessWidget {
  const MediaQueryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Container(
      height: screenHeight * 0.5,
      width: screenWidth,
      color: Colors.blue[200],
      child: Center(
        child: Text(
          'Media Query',
        ),
      ),
    );
  }
}
