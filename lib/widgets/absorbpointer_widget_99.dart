import 'package:flutter/material.dart';

class AbsorbPointerWidget extends StatefulWidget {
  const AbsorbPointerWidget({super.key});

  @override
  State<AbsorbPointerWidget> createState() => _AbsorbPointerWidgetState();
}

class _AbsorbPointerWidgetState extends State<AbsorbPointerWidget> {
  bool isEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AbsorbPointer(
            absorbing: !isEnabled,
            child: TextField(
              decoration: InputDecoration(
                  labelText:
                      isEnabled ? 'Enter your Name' : 'Textfield is Blocked'),
            ),
          ),
        ),
        SizedBox(width: 30),
        Switch(
            value: isEnabled,
            onChanged: (value) {
              setState(() {
                isEnabled = value;
              });
            }),
      ],
    );
  }
}
