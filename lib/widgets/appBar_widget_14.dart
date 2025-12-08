import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(
          right: Radius.circular(40),
          left: Radius.circular(40),
        )),
        backgroundColor: Colors.blue[300],
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        title: Text('Flutter'),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_outline, color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.logout, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
