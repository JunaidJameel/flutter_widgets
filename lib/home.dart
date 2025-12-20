import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/cupertino_switch_widget_23.dart';
import 'package:flutter_widgets/widgets/expansion_tile_widget_28.dart';
import 'package:flutter_widgets/widgets/fitted_box_widget_24.dart';
import 'package:flutter_widgets/widgets/google_fonts_26.dart';
import 'package:flutter_widgets/widgets/listTile_widget_22.dart';
import 'package:flutter_widgets/widgets/stack_widget_27.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 120),
        child: SafeArea(
            bottom: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(0),
                    child: ExpansionTileWidget()),
                Row()
              ],
            )),
      ),
    );
  }
}
