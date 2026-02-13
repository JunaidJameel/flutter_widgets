import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/qr_code_package_82.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(child: QrCodePackage()),
      ),
    );
  }
}
