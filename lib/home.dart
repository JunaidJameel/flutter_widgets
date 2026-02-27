import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/link_preview_94.dart';

import 'package:flutter_widgets/widgets/awesome_snackbar_package_91.dart';
import 'package:flutter_widgets/widgets/emoji_package_93.dart';
import 'package:flutter_widgets/widgets/pinput_package_95.dart';
import 'package:flutter_widgets/widgets/story_package_96.dart';
import 'package:flutter_widgets/widgets/timeline_package_92.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: StoryPackage(),
    );
  }
}
