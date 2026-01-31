import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatefulBuilderWidget extends StatelessWidget {
  const StatefulBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    int count = 0;
    return StatefulBuilder(
      builder: (context, setState) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Count $count',
              style:
                  GoogleFonts.oswald(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {
                  setState(() => count++);
                },
                child: Text('Increment')),
          ],
        );
      },
    );
  }
}
