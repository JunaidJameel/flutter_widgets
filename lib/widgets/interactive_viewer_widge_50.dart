import 'package:flutter/material.dart';

class InteractiveViewerWidget extends StatelessWidget {
  const InteractiveViewerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: InteractiveViewer(
        boundaryMargin: EdgeInsets.all(double.infinity),
        minScale: .5,
        maxScale: 4.0,
        child: Image.network(
          'https://i.pinimg.com/1200x/c7/83/05/c783056c9e8733c088a17111751ef26b.jpg',
        ),
      ),
    );
  }
}
