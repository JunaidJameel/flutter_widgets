import 'package:flutter/material.dart';

class ListWheelScrollViewWidget extends StatelessWidget {
  ListWheelScrollViewWidget({super.key});

  final List<String> frameworks = [
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
      squeeze: 0.8,
      overAndUnderCenterOpacity: 0.4,
      onSelectedItemChanged: (value) {},
      itemExtent: 40,
      childDelegate: ListWheelChildBuilderDelegate(
        builder: (context, index) {
          return Text(
            frameworks[index],
            style: const TextStyle(
                fontSize: 37,
                fontWeight: FontWeight.w700,
                color: Colors.white,
                letterSpacing: 1.2),
          );
        },
        childCount: frameworks.length,
      ),
    );
  }
}
