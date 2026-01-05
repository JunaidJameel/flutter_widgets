import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/hero_animation_widget_43.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_widgets/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Widgets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const HeroAnimationPage(),
    );
  }
}
