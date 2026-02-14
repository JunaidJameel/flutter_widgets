import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCodePackage extends StatelessWidget {
  const QrCodePackage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(25),
      child: QrImageView(
        data: 'https://pub.dev/packages/qr_flutter',
        backgroundColor: Colors.white,
        size: 250,
        padding: EdgeInsets.all(20),
      ),
    );
  }
}
