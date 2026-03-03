import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IsolatesInFlutter extends StatefulWidget {
  const IsolatesInFlutter({super.key});

  @override
  State<IsolatesInFlutter> createState() => _IsolatesInFlutterState();
}

class _IsolatesInFlutterState extends State<IsolatesInFlutter> {
  void runIsolateTask() async {
    final recievePort = ReceivePort();

    await Isolate.spawn(countNumbersInIsolate, recievePort.sendPort);

    recievePort.listen((message) {
      debugPrint('Isolate Result: $message');
      recievePort.close();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Lottie.asset('assets/Man.json'),
        ElevatedButton(
          onPressed: () async {
            final total = await countNumbers();
            debugPrint('Blocking Result: $total');
          },
          child: const Text('Heavy Task'),
        ),
        ElevatedButton(
          onPressed: runIsolateTask,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.brown,
          ),
          child: const Text('Task with Isolate'),
        ),
      ],
    );
  }

  Future<int> countNumbers() async {
    int count = 0;
    for (int i = 0; i < 10000000000; i++) {
      count++;
    }
    return count;
  }
}

void countNumbersInIsolate(SendPort sendPort) {
  int count = 0;
  for (int i = 0; i < 10000000000; i++) {
    count++;
  }

  sendPort.send(count);
}
