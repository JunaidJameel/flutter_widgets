import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  void _tapSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (_) => FractionallySizedBox(
            heightFactor: .55, child: _buildBottomSheetContent()));
  }

  Widget _buildBottomSheetContent() {
    return Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            const Text(
              'Bottom Sheet Title',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            const Text(
              'This is the content of your bottom sheet. You can add any widgets here.',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.black,
      onPressed: () => _tapSheet(context),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Show Sheet',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
    );
  }
}
