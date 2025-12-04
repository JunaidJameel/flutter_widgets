import 'package:flutter/material.dart';

class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          flex: 1,
          child: Container(
            height: 200,
            color: Colors.purple[200],
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            height: 200,
            color: Colors.green[200],
          ),
        ),
      ],
    );
  }
}
