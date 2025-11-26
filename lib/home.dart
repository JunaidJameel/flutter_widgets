import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/row_widget_03.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(246, 244, 244, 1),
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(height: 50),
          RowWidget(),
        ],
      )),
    );
  }
}
