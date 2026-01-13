import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/sliver_appBar_widget_51.dart';
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
        scaffoldBackgroundColor: Colors.grey[400],
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: SliverAppbarWidget(),
    );
  }
}
