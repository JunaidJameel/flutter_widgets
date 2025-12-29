import 'package:flutter/material.dart';

class DropDownButtonWidget extends StatefulWidget {
  const DropDownButtonWidget({super.key});

  @override
  State<DropDownButtonWidget> createState() => _DropDownButtonWidgetState();
}

class _DropDownButtonWidgetState extends State<DropDownButtonWidget> {
  String selectedValue = 'Flutter UI & Animations 🔥';

  final List<String> items = [
    'Flutter UI & Animations 🔥',
    'Bloc / Cubit 🧠',
    'Dart Language',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: DropdownButton<String>(
        icon: Transform.translate(
          offset: const Offset(0, -8),
          child: const Icon(Icons.keyboard_arrow_down,
              color: Colors.black, size: 26),
        ),
        underline: Container(height: 1, color: Colors.grey),
        isExpanded: true,
        value: selectedValue,
        dropdownColor: Colors.black87,
        borderRadius: BorderRadius.circular(15),
        selectedItemBuilder: (context) {
          return items.map((item) {
            return Text(
              item,
              style: const TextStyle(color: Colors.black, fontSize: 18),
            );
          }).toList();
        },
        items: items.map((item) {
          return DropdownMenuItem(
            value: item,
            child: Text(
              item,
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
          );
        }).toList(),
        onChanged: (value) {
          setState(() {
            selectedValue = value!;
          });
        },
      ),
    );
  }
}
