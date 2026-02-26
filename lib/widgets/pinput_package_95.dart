import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class PinputPackage extends StatelessWidget {
  const PinputPackage({super.key});

  PinTheme pinTheme({Color? borderColor, double width = 1, Color? fillColor}) {
    return PinTheme(
      height: 60,
      width: 60,
      textStyle: const TextStyle(fontSize: 23, color: Colors.black),
      decoration: BoxDecoration(
        color: fillColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: borderColor ?? Colors.black,
          width: width,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Pinput(
      defaultPinTheme: pinTheme(),
      focusedPinTheme: pinTheme(borderColor: Colors.deepPurple, width: 2),
      submittedPinTheme: pinTheme(
        borderColor: Colors.deepPurple,
        fillColor: Colors.deepPurple[100],
      ),
      length: 4,
      onCompleted: (value) {},
    );
  }
}
