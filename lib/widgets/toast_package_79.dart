import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastPackage extends StatelessWidget {
  const ToastPackage({super.key});

  void showToast() {
    Fluttertoast.showToast(
      msg: 'Flutter is Cool',
      backgroundColor: Colors.green,
      fontSize: 22,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 2,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: showToast,
      child: Text('Show Toast'),
    );
  }
}
