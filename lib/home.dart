import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/flexible_widget_11.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SafeArea(bottom: false, child: FlexibleWidget()),
      ),
    );
  }
}
