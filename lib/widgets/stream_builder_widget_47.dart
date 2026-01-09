import 'package:flutter/material.dart';

class StreamBuilderWidget extends StatelessWidget {
  const StreamBuilderWidget({super.key});

  Stream temperature() async* {
    final temps = [22, 24, 23, 25, 26, 24, 29, 33];

    for (var temp in temps) {
      await Future.delayed(const Duration(seconds: 2));
      yield temp;
    }
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: temperature(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Text(
              '${snapshot.data}°C',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w500),
            );
          }
          return const CircularProgressIndicator();
        });
  }
}
