import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/constrained_box_widget_37.dart';
import 'package:flutter_widgets/widgets/drop_down_button_widget_36.dart';

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
            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ConstrainedBoxWidget(),
                Row(),
              ],
            ),
          )),
    );
  }
}
