import 'package:flutter/material.dart';

class AnimatedRotationWidget extends StatefulWidget {
  const AnimatedRotationWidget({super.key});

  @override
  State<AnimatedRotationWidget> createState() => _AnimatedRotationWidgetState();
}

class _AnimatedRotationWidgetState extends State<AnimatedRotationWidget> {
  double _rotate = 0.0;

  void _toggle() {
    setState(() {
      _rotate = _rotate == 0 ? 0.5 : 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedRotation(
            turns: _rotate,
            duration: const Duration(milliseconds: 600),
            curve: Curves.easeInOut,
            child: Image.asset('assets/plate.png')),
        SizedBox(height: 50),
        ElevatedButton(onPressed: _toggle, child: Text('Rotate')),
      ],
    );
  }
}
