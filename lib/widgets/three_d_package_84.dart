import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';

class ThreeDView extends StatelessWidget {
  const ThreeDView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Flutter3DViewer(
        src: 'assets/car.glb',
        enableTouch: true,
        onLoad: (value) {},
        progressBarColor: Colors.transparent,
      ),
    );
  }
}
