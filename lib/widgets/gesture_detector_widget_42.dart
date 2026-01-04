import 'package:flutter/material.dart';

class GestureDetectorWidget extends StatelessWidget {
  const GestureDetectorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // ontap works if you just simply tap the widget

      onTap: () => debugPrint('Container is Pressed'),
      // ondoubeTap works when you double tap on the widget
      onDoubleTap: () => debugPrint('Container is Pressed on Double Tap'),

      // onLongPress works when you tap & hold the widget
      onLongPress: () => debugPrint('Container is pressed on long press'),
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.black87),
        child: Center(
          child: Text(
            'Tap Me',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
      ),
    );
  }
}
