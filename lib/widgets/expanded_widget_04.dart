import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          'https://i.pinimg.com/1200x/32/5f/85/325f856c0c0320393a5205f94277dea7.jpg',
          height: 300,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Expanded(
          child: Container(
            color: Colors.purple[200],
          ),
        ),
      ],
    );
  }
}
