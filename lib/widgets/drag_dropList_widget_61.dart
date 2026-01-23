import 'package:flutter/material.dart';

class DragDropListWidget extends StatefulWidget {
  const DragDropListWidget({super.key});

  @override
  State<DragDropListWidget> createState() => _DragDropListWidgetState();
}

class _DragDropListWidgetState extends State<DragDropListWidget> {
  final List<String> _items = [
    'SwiftUI',
    'Flutter',
    'React Native',
    'Jetpack Compose',
    'Xamarin',
  ];

  void _onReorder(int oldIndex, int newIndex) {
    setState(() {
      if (newIndex > oldIndex) newIndex -= 1;
      final item = _items.removeAt(oldIndex);
      _items.insert(newIndex, item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ReorderableListView.builder(
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(top: 16),
          key: ValueKey(_items[index]),
          decoration: BoxDecoration(
              color: Colors.blue[300], borderRadius: BorderRadius.circular(10)),
          child: ListTile(
            key: ValueKey(_items[index]),
            title: Text(_items[index]),
          ),
        );
      },
      itemCount: _items.length,
      onReorder: _onReorder,
      proxyDecorator: (child, index, animation) {
        return Material(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(12)),
          color: const Color.fromARGB(14, 0, 0, 0),
          child: child,
        );
      },
    );
  }
}
