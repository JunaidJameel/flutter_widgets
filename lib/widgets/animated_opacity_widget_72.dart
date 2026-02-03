import 'package:flutter/material.dart';

class AnimatedOpacityWidget extends StatefulWidget {
  const AnimatedOpacityWidget({super.key});

  @override
  State<AnimatedOpacityWidget> createState() => _AnimatedOpacityWidgetState();
}

class _AnimatedOpacityWidgetState extends State<AnimatedOpacityWidget> {
  bool _show = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedOpacity(
          opacity: _show ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 500),
          child: Image.network('https://iili.io/fZZvuXn.png'),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
            onPressed: () {
              setState(() {
                _show = !_show;
              });
            },
            child: Text(_show ? 'Hide' : 'Show'))
      ],
    );
  }
}
