import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/animated_opacity_widget_72.dart';
import 'package:flutter_widgets/widgets/glass_morphism_widget_73.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0),
        child: GlassMorphismWidget(),
      ),
    );
  }
}
