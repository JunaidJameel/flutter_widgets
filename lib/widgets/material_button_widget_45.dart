import 'package:flutter/material.dart';

class MaterialButtonWidget extends StatelessWidget {
  const MaterialButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(
        splashColor: Colors.pink,
        color: Colors.black87,
        minWidth: double.infinity,
        height: 60,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        onPressed: () {},
        child: Text(
          'Material Button',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}
