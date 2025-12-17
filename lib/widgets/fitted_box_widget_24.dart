import 'package:flutter/material.dart';

class FittedBoxWidget extends StatelessWidget {
  const FittedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: 70,
      width: 400,
      color: Colors.black,
      child: FittedBox(
        child: Text(
          'This sentence used FittedBox Widget',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
