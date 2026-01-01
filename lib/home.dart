import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/constrained_box_widget_37.dart';
import 'package:flutter_widgets/widgets/gridTile_widget_39.dart';
import 'package:flutter_widgets/widgets/drop_down_button_widget_36.dart';
import 'package:flutter_widgets/widgets/spacer_widget_38.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 100),
          child: GridTileWidget(),
        ),
      ),
    );
  }
}
