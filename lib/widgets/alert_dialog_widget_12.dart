import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertDialogWidget extends StatefulWidget {
  const AlertDialogWidget({super.key});

  @override
  State<AlertDialogWidget> createState() => _AlertDialogWidgetState();
}

class _AlertDialogWidgetState extends State<AlertDialogWidget> {
  void _materialDialog() {
    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            backgroundColor: Colors.purple[100],
            title: Text(
              'Alert Title',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            content: Text(
              'Subtitle, Info about thing',
              style: TextStyle(fontSize: 20),
            ),
            actions: [
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                color: Colors.black87,
                child: Text(
                  'Done',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                color: Colors.red[400],
                child: Text(
                  'Cancel',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          );
        });
  }

  void _cupertinoDialog() {
    showDialog(
        context: context,
        builder: (_) {
          return CupertinoAlertDialog(
            //  backgroundColor: Colors.purple[100],
            title: Text(
              'Alert Title',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            content: Text(
              'Subtitle, Info about thing',
              style: TextStyle(fontSize: 20),
            ),
            actions: [
              MaterialButton(
                // color: Colors.black,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Done',
                ),
              ),
              MaterialButton(
                // color: Colors.red[400],
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Cancel',
                ),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      color: Colors.black87,
      onPressed: _materialDialog,
      child: Text(
        'DIALOG',
        style: TextStyle(fontSize: 30, color: Colors.white),
      ),
    );
  }
}
