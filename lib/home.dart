import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/aspect_ratio_widget_59.dart';
import 'package:flutter_widgets/widgets/auto_complete_widget_60.dart';
import 'package:flutter_widgets/widgets/drag_dropList_widget_61.dart';
import 'package:flutter_widgets/widgets/grid_paper_widget_63.dart';
import 'package:flutter_widgets/widgets/media_query_widget_58.dart';
import 'package:flutter_widgets/widgets/percent_indicator_package_62.dart';

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
          padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0),
          child: GridPaperWidget(),
        ),
      ),
    );
  }
}
