import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({super.key});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _controller,
          style: TextStyle(color: Colors.white, fontSize: 18),
          cursorColor: Colors.white,
          decoration: InputDecoration(
            prefixIcon:
                Icon(CupertinoIcons.search, color: Colors.white, size: 22),
            suffixIcon: Icon(CupertinoIcons.arrow_right_circle_fill,
                color: Colors.green[400], size: 30),
            hintText: 'Search',
            hintStyle: TextStyle(color: Colors.white, fontSize: 18),
            fillColor: Colors.black87,
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Colors.blue[600]!,
                width: 2,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
