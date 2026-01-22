import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AutoCompleteWidget extends StatefulWidget {
  const AutoCompleteWidget({super.key});

  @override
  State<AutoCompleteWidget> createState() => _AutoCompleteWidgetState();
}

class _AutoCompleteWidgetState extends State<AutoCompleteWidget> {
  final List<String> _books = [
    'Clean Code',
    'Refactoring',
    'The Pragmatic Programmer',
    'Code Complete',
    'Design Patterns',
    'You Don’t Know JS',
  ];

  @override
  Widget build(BuildContext context) {
    return Autocomplete(
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text.isEmpty) {
          return const Iterable<String>.empty();
        }
        return _books.where((String item) {
          return item
              .toLowerCase()
              .contains(textEditingValue.text.toLowerCase());
        });
      },
      fieldViewBuilder: (
        BuildContext context,
        TextEditingController controller,
        FocusNode focusNode,
        VoidCallback onFieldSubmitted,
      ) {
        return TextField(
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          decoration: InputDecoration(hintText: 'Search a Book'),
          controller: controller,
          focusNode: focusNode,
          onSubmitted: (String value) {
            onFieldSubmitted();
          },
        );
      },
      optionsViewBuilder: (
        BuildContext context,
        AutocompleteOnSelected<String> onselected,
        Iterable<String> options,
      ) {
        return Container(
          margin: EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.black87,
          ),
          child: ListView.builder(
              itemCount: options.length,
              shrinkWrap: true,
              padding: EdgeInsets.all(20),
              itemBuilder: (context, index) {
                final String currentOption = options.elementAt(index);

                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: InkWell(
                    onTap: () {
                      onselected(currentOption);
                    },
                    child: Text(
                      currentOption,
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontSize: 20),
                    ),
                  ),
                );
              }),
        );
      },
    );
  }
}
