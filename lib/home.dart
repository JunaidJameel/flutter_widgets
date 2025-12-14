import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/checkBox_widget_19.dart';
import 'package:flutter_widgets/widgets/inkwell_widget_21.dart';
import 'package:flutter_widgets/widgets/textstyle_widget_20.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 120),
        child: SafeArea(
            bottom: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [InkWellWidget(), Row()],
            )),
      ),
    );
  }
}
