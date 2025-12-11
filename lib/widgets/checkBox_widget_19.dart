import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({super.key});

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
        scale: 1.5,
        child: Checkbox(
            activeColor: Colors.green,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            value: isChecked,
            onChanged: (checkStatus) {
              setState(() {
                isChecked = checkStatus;
              });
            }));
  }
}
