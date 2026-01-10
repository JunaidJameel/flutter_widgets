import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieAnimationPackage extends StatelessWidget {
  const LottieAnimationPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset('assets/car.json'),
    );
  }
}
