import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        Icon(Icons.favorite, size: 30, color: Colors.red),
        // SizedBox(width: 50),
        Text('Hello Junaid',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        // SizedBox(width: 50),
        MaterialButton(
            color: Colors.amber, onPressed: () {}, child: Text('Button'))
      ],
    );
  }
}
