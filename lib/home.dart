import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/animated_rotation_widget_89.dart';
import 'package:flutter_widgets/widgets/auto_size_text_package_85.dart';
import 'package:flutter_widgets/widgets/error_widget_88.dart';
import 'package:flutter_widgets/widgets/like_button_package_86.dart';
import 'package:flutter_widgets/widgets/qr_code_package_82.dart';
import 'package:flutter_widgets/widgets/slide_to_act_package_87.dart';
import 'package:flutter_widgets/widgets/snackbar_widget_83.dart';
import 'package:flutter_widgets/widgets/three_d_package_84.dart';
import 'package:flutter_widgets/widgets/uuid_package_90.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            UuidPackage(),
            Row(),
          ],
        ),
      ),
    );
  }
}
