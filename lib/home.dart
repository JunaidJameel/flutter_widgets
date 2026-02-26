import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/link_preview_94.dart';

import 'package:flutter_widgets/widgets/awesome_snackbar_package_91.dart';
import 'package:flutter_widgets/widgets/emoji_package_93.dart';
import 'package:flutter_widgets/widgets/pinput_package_95.dart';
import 'package:flutter_widgets/widgets/timeline_package_92.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 200),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: PinputPackage()),
                Row(),
              ],
            ),
          )),
    );
  }
}
