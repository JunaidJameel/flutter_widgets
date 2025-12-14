import 'package:flutter/material.dart';

class InkWellWidget extends StatelessWidget {
  const InkWellWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.red[300],
      onTap: () {
        print('Button Pressed');
      },
      child: Ink(
        height: 200,
        width: 200,
        color: Colors.purple[300],
        child: Center(
          child: Text('Click Me !'),
        ),
      ),
    );
  }
}
