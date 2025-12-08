import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            elevation: 5,
            overlayColor: Colors.blue,
            shadowColor: Colors.grey,
            backgroundColor: Colors.purple[200],
            padding: EdgeInsets.symmetric(vertical: 15),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        child: Text(
          'Elevated Button',
          style: TextStyle(fontSize: 22, color: Colors.black),
        ),
      ),
    );
  }
}
