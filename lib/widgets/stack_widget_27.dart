import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: 200,
          width: 170,
          decoration: BoxDecoration(
              color: Colors.purple[200],
              image: DecorationImage(
                  image: NetworkImage(
                      'https://i.pinimg.com/736x/11/e9/b2/11e9b2816f50daf5994f14d6739bbf8b.jpg'),
                  fit: BoxFit.cover),
              shape: BoxShape.circle),
        ),
        CircleAvatar(
            backgroundColor: Colors.black,
            child: Icon(
              Icons.add,
              color: Colors.white,
            ))
      ],
    );
  }
}
