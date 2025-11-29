import 'package:flutter/material.dart';

class ClipRRectWidget extends StatelessWidget {
  const ClipRRectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        // alignment: Alignment.topLeft,
        height: 400,
        width: 400,
        decoration: BoxDecoration(
          color: Colors.blue[200],
          borderRadius: BorderRadius.circular(30),
        ),
        child: Image.network(
          'https://i.pinimg.com/1200x/fc/65/db/fc65db8ba66024d3c85f320bab36cc95.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
