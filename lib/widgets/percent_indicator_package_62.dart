import 'package:flutter/material.dart';
import 'package:percent_indicator/flutter_percent_indicator.dart';

class PercentIndicatorPackage extends StatelessWidget {
  const PercentIndicatorPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 120,
      lineWidth: 25,
      percent: 0.7,
      progressColor: Colors.green.shade400,
      circularStrokeCap: CircularStrokeCap.round,
      center: Text('70 %'),
      animation: true,
      animationDuration: 1500,
    );
  }
}
