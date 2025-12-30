import 'package:flutter/material.dart';

class ConstrainedBoxWidget extends StatelessWidget {
  const ConstrainedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: 400,
        maxWidth: 300,
        minWidth: 100,
        minHeight: 200,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.network(
            "https://i.pinimg.com/1200x/1e/f0/3f/1ef03fd0be809d29f0413f2de638a528.jpg",
          ),
        ),
      ),
    );
  }
}
