import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/richText_widget_18.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 120),
        child: SafeArea(
            bottom: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [RichTextWidget(), Row()],
            )),
      ),
    );
  }
}
