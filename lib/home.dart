import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/container_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContainerWidget(),
    );
  }
}
