import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/date_picker_widget_41.dart';
import 'package:flutter_widgets/widgets/gesture_detector_widget_42.dart';
import 'package:flutter_widgets/widgets/tab_bar_widget_40.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetectorWidget(),
              Row(),
            ],
          ),
        ),
      ),
    );
  }
}
