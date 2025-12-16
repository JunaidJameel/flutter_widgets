import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSwitchWidget extends StatefulWidget {
  const CupertinoSwitchWidget({super.key});

  @override
  State<CupertinoSwitchWidget> createState() => _CupertinoSwitchWidgetState();
}

class _CupertinoSwitchWidgetState extends State<CupertinoSwitchWidget> {
  bool _isOn = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
        thumbColor: Colors.white,
        activeTrackColor: Colors.purple[200],
        value: _isOn,
        onChanged: (bool status) {
          setState(() {
            _isOn = status;
          });
        });
  }
}
