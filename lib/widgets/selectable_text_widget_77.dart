import 'package:flutter/material.dart';

class SelectableTextWidget extends StatelessWidget {
  const SelectableTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SelectableText(
      selectionColor: Colors.red,
      onTap: () {},
      'Flutter rewards people who care about structure more than shortcuts. It feels simple on the surface, but the depth shows up when apps scale.',
    );
  }
}
