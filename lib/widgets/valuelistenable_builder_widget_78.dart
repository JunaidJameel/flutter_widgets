import 'package:flutter/material.dart';

class ValueListenableBuilderWidget extends StatelessWidget {
  ValueListenableBuilderWidget({super.key});

  final ValueNotifier<String> text = ValueNotifier('');

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          onChanged: (value) {
            text.value = value;
          },
        ),
        SizedBox(height: 30),
        ValueListenableBuilder(
            valueListenable: text,
            builder: (context, value, child) {
              return ElevatedButton(
                onPressed: value.length >= 3 ? () {} : null,
                child: Text('Submit'),
              );
            }),
      ],
    );
  }
}
