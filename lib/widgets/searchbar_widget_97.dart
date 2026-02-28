import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  SearchBarWidget({super.key});

  final List<String> fruits = [
    'Apple',
    'Banana',
    'Mango',
    'Orange',
    'Grapes',
    'Watermelon',
  ];

  @override
  Widget build(BuildContext context) {
    return SearchAnchor(
      viewBackgroundColor: Colors.white,
      builder: (context, controller) {
        return SearchBar(
          controller: controller,
          backgroundColor: WidgetStatePropertyAll(Colors.white),
          onTap: () => controller.openView(),
          onChanged: (value) => controller.openView(),
          hintText: 'Search ...',
          leading: const Icon(CupertinoIcons.search, size: 27),
        );
      },
      suggestionsBuilder: (context, controller) {
        final query = controller.text.toLowerCase();

        final filteredItems = fruits.where((item) {
          return item.toLowerCase().contains(query);
        }).toList();

        return filteredItems.map((item) {
          return ListTile(
            title: Text(item),
            onTap: () => controller.closeView(item),
          );
        }).toList();
      },
    );
  }
}
