import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double _slide = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slider(
          label: _slide.toString(),
          activeColor: Colors.green,
          thumbColor: Colors.white,
          //   inactiveColor: Colors.,
          value: _slide,
          onChanged: (val) {
            setState(() {
              _slide = val;
            });
          },
        )
      ],
    );
  }
}
