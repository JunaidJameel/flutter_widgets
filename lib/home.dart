import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/container_widget_01.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(246, 244, 244, 1),
      body: ContainerWidget(),
    );
  }
}
