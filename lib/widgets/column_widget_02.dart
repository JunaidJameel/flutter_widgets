import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(height: 100, width: 100, color: Colors.purple[200]),
        SizedBox(height: 30),
        Container(height: 100, width: 100, color: Colors.blue[200]),
      ],
    );
  }
}
