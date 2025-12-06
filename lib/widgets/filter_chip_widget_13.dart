import 'package:flutter/material.dart';

class FilterChipWidget extends StatefulWidget {
  const FilterChipWidget({super.key});

  @override
  State<FilterChipWidget> createState() => _FilterChipWidgetState();
}

class _FilterChipWidgetState extends State<FilterChipWidget> {
  final List<String> chips = [
    'Books',
    'Programming',
    'Finance',
    'Art',
    'Travel',
  ];

  Set<String> selectedChips = {};

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: List.generate(
        chips.length,
        (index) => FilterChip(
          backgroundColor: Colors.blue[300],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          label: Text(
            chips[index],
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
          onSelected: (bool value) {
            setState(() {
              if (value) {
                selectedChips.add(chips[index]);
              } else {
                selectedChips.remove(chips[index]);
              }
            });
          },
          selected: selectedChips.contains(chips[index]),
          selectedColor: Colors.purple[200],
          showCheckmark: false,
        ),
      ),
    );
  }
}
