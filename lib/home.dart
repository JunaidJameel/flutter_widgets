import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/data_table_widget_52.dart';
import 'package:flutter_widgets/widgets/interactive_viewer_widge_50.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: SafeArea(
        top: false,
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DataTableWidget(),
              Row(),
            ],
          ),
        ),
      ),
    );
  }
}
