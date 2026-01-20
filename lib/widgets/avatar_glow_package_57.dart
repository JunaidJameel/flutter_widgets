import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AvatarGlowPackage extends StatelessWidget {
  const AvatarGlowPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return AvatarGlow(
      glowColor: Colors.grey,
      glowRadiusFactor: 1.5,
      duration: const Duration(milliseconds: 3000),
      curve: Curves.ease,
      child: Icon(CupertinoIcons.add, size: 70, color: Colors.white),
    );
  }
}
