import 'package:flutter/material.dart';

class ListWheelScrollViewWidget extends StatelessWidget {
  ListWheelScrollViewWidget({super.key});

  List<String> frameworks = [
    'Android',
    'Swift UI',
    'Flutter',
    'KMP',
    'R-Native'
  ];

  @override
  Widget build(BuildContext context) {
    return ListWheelScrollView.useDelegate(
      physics: const FixedExtentScrollPhysics(),
      diameterRatio: 1.2,
      perspective: 0.01,
      itemExtent: 40,
      squeeze: 0.7,
      overAndUnderCenterOpacity: 0.2,
      childDelegate: ListWheelChildBuilderDelegate(
          childCount: frameworks.length,
          builder: (context, index) {
            return Text(
              frameworks[index],
              style: const TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  letterSpacing: 1.2),
            );
          }),
    );
  }
}
