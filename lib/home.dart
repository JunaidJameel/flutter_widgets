import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/aspect_ratio_widget_59.dart';
import 'package:flutter_widgets/widgets/auto_complete_widget_60.dart';
import 'package:flutter_widgets/widgets/media_query_widget_58.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AspectRatioWidget(),
              Row(),
            ],
          ),
        ),
      ),
    );
  }
}
