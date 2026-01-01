import 'package:flutter/material.dart';

class SpacerWidget extends StatelessWidget {
  const SpacerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.purple[200],
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        Spacer(),
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        Spacer(
          flex: 5,
        ),
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.green[300],
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ],
    );
  }
}
