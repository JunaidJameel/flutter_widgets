import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/image_widget_09.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ImageWidget(), Row()],
        ),
      ),
    );
  }
}
