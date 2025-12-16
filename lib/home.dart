import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/cupertino_switch_widget_23.dart';
import 'package:flutter_widgets/widgets/listTile_widget_22.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 120),
        child: SafeArea(
            bottom: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [CupertinoSwitchWidget(), Row()],
            )),
      ),
    );
  }
}
