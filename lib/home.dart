import 'package:flutter/material.dart';

import 'package:flutter_widgets/widgets/overlaping_stack_widget_80.dart';
import 'package:flutter_widgets/widgets/url_launcher_package_81.dart';
import 'package:flutter_widgets/widgets/toast_package_79.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(child: UrlLauncherPackage()),
      ),
    );
  }
}
