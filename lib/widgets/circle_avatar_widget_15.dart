import 'package:flutter/material.dart';

class CircleAvatarWidget extends StatelessWidget {
  const CircleAvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          shape: BoxShape.circle, border: Border.all(color: Colors.black)),
      child: CircleAvatar(
        radius: 120,
        backgroundColor: Colors.grey[300],
        backgroundImage: NetworkImage(
            'https://i.pinimg.com/736x/5e/de/c9/5edec9c3fe4fd6e69a722dba9fafa5ba.jpg'),

        // Use child to display anything on top of background image
        //  child: Icon(Icons.favorite, color: Colors.red, size: 30),
      ),
    );
  }
}
