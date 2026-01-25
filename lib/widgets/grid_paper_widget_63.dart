import 'package:flutter/material.dart';

class GridPaperWidget extends StatelessWidget {
  const GridPaperWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: GridPaper(
        color: Colors.grey.withValues(alpha: .7),
        divisions: 1,
        subdivisions: 1,
        child: Image.network(
          'https://i.pinimg.com/736x/1b/66/ea/1b66eaa656b886d8e881f31c900074f9.jpg',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
