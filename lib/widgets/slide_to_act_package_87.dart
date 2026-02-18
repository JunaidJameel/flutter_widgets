import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class SlideToActPackage extends StatelessWidget {
  const SlideToActPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return SlideAction(
      onSubmit: () {
        return null;
      },
      outerColor: Colors.black87,
      text: "Slide to Pay",
      sliderRotate: true,
    );
  }
}
