import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/qr_code_package_82.dart';
import 'package:flutter_widgets/widgets/snackbar_widget_83.dart';
import 'package:flutter_widgets/widgets/three_d_package_84.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ThreeDView(),
          ],
        ),
      ),
    );
  }
}
