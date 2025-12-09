import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 5,
          shadowColor: Colors.grey,
          overlayColor: Colors.blue,
          backgroundColor: Colors.purple[200],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.symmetric(vertical: 15),
        ),
        onPressed: () {},
        child: Text(
          'Elevated Button',
          style: TextStyle(fontSize: 22, color: Colors.black),
        ),
      ),
    );
  }
}
