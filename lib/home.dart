import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/animated_opacity_widget_72.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [AnimatedOpacityWidget(), Row()],
      ),
    );
  }
}
