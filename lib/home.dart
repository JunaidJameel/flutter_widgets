import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/cupertino_switch_widget_23.dart';
import 'package:flutter_widgets/widgets/fitted_box_widget_24.dart';
import 'package:flutter_widgets/widgets/future_builder_widget_29.dart';
import 'package:flutter_widgets/widgets/google_fonts_26.dart';
import 'package:flutter_widgets/widgets/listTile_widget_22.dart';
import 'package:flutter_widgets/widgets/stack_widget_27.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 120),
        child: SafeArea(
            bottom: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [FutureBuilderWidget(), Row()],
            )),
      ),
    );
  }
}
