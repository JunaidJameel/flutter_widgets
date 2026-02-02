import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/animate_do_package_70.dart';
import 'package:flutter_widgets/widgets/aspect_ratio_widget_59.dart';
import 'package:flutter_widgets/widgets/auto_complete_widget_60.dart';
import 'package:flutter_widgets/widgets/card_swiper_package_71.dart';
import 'package:flutter_widgets/widgets/drag_dropList_widget_61.dart';
import 'package:flutter_widgets/widgets/grid_paper_widget_63.dart';
import 'package:flutter_widgets/widgets/layout_builder_widget_64.dart';
import 'package:flutter_widgets/widgets/listwheel_scrollview_widget_66.dart';
import 'package:flutter_widgets/widgets/media_query_widget_58.dart';
import 'package:flutter_widgets/widgets/percent_indicator_package_62.dart';
import 'package:flutter_widgets/widgets/slidable_widget_65.dart';
import 'package:flutter_widgets/widgets/stateful_builder_widget_69.dart';
import 'package:flutter_widgets/widgets/video_player_package_67.dart';
import 'package:video_player/video_player.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withValues(alpha: .8),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [CardSwiperWidget(), Row()],
      ),
    );
  }
}
