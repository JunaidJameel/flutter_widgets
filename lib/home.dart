import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/animated_text_kit_49.dart';
import 'package:flutter_widgets/widgets/lottie_animation_package_48.dart';
import 'package:flutter_widgets/widgets/stream_builder_widget_47.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        top: false,
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AnimatedTextKitPackage(),
              Row(),
            ],
          ),
        ),
      ),
    );
  }
}
