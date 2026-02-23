import 'package:flutter/material.dart';

import 'package:flutter_widgets/widgets/awesome_snackbar_package_91.dart';
import 'package:flutter_widgets/widgets/timeline_package_92.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 70),
        child: ModernStepperWidget(),
      ),
    );
  }
}
