import 'package:flutter/material.dart';

import 'package:flutter_widgets/widgets/shimmer_package_91.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AwesomeSnackbar(),
            Row(),
          ],
        ),
      ),
    );
  }
}
