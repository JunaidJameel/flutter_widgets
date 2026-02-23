import 'package:flutter/material.dart';

import 'package:flutter_widgets/widgets/awesome_snackbar_package_91.dart';
import 'package:flutter_widgets/widgets/emoji_package.dart';
import 'package:flutter_widgets/widgets/timeline_package_92.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      bottomNavigationBar: Container(
        height: 20,
        color: Colors.white,
      ),
      body: SafeArea(
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: EmojiPackage(),
          )),
    );
  }
}
