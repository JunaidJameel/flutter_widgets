import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/cached_network_image_widget_46.dart';
import 'package:flutter_widgets/widgets/hero_animation_widget_43.dart';
import 'package:flutter_widgets/widgets/material_button_widget_45.dart';
import 'package:flutter_widgets/widgets/pageview_builder_widget_44.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        top: false,
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CachedNetworkImageWidget(),
              Row(),
            ],
          ),
        ),
      ),
    );
  }
}
