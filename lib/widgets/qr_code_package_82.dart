import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCodePackage extends StatelessWidget {
  const QrCodePackage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(25),
      child: QrImageView(
        padding: EdgeInsets.all(20),
        size: 250,
        backgroundColor: Colors.white,
        data: 'https://pub.dev/packages/qr_flutter',
      ),
    );
  }
}
