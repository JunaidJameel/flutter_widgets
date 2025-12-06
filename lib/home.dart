import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/filter_chip_widget_13.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 120),
        child: SafeArea(bottom: false, child: FilterChipWidget()),
      ),
    );
  }
}
