import 'package:flutter/material.dart';

class SpacerWidget extends StatelessWidget {
  const SpacerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 150,
          width: 150,
          color: Colors.purple[200],
        ),
        Spacer(),
        Container(
          height: 150,
          width: 150,
          color: Colors.black,
        ),
        Spacer(
          flex: 5,
        ),
        Container(
          height: 150,
          width: 150,
          color: Colors.green[300],
        ),
      ],
    );
  }
}
