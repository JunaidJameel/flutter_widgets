import 'package:flutter/material.dart';

class DropDownButtonWidget extends StatefulWidget {
  const DropDownButtonWidget({super.key});

  @override
  State<DropDownButtonWidget> createState() => _DropDownButtonWidgetState();
}

class _DropDownButtonWidgetState extends State<DropDownButtonWidget> {
  String selectedValue = 'Flutter UI & Animations 🔥';

  List<String> menuOptions = [
    'Flutter UI & Animations 🔥',
    'Bloc / Cubit 🧠',
    'Dart Language',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: DropdownButton(
        dropdownColor: Colors.green[100],
        borderRadius: BorderRadius.circular(16),
        icon: Icon(Icons.keyboard_arrow_down, size: 30),
        underline: Container(height: 1, color: Colors.grey),
        isExpanded: true,
        value: selectedValue,
        items: menuOptions.map((i) {
          return DropdownMenuItem(
              value: i,
              child:
                  Text(i, style: TextStyle(color: Colors.black, fontSize: 19)));
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
