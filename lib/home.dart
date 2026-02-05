import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/animated_opacity_widget_72.dart';
import 'package:flutter_widgets/widgets/glass_morphism_widget_73.dart';
import 'package:flutter_widgets/widgets/gradient_text_widget_75.dart';
import 'package:flutter_widgets/widgets/rating_bar_package_74.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0),
        child: GradientTextWidget(),
      ),
    );
  }
}
