import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/textfield_widget_17.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 120),
        child: SafeArea(
            bottom: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [TextFieldWidget(), Row()],
            )),
      ),
    );
  }
}
