import 'package:flutter/material.dart';

class OverlapingStackWidget extends StatelessWidget {
  const OverlapingStackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = <String>[
      "https://images.unsplash.com/photo-1615109398623-88346a601842?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://images.unsplash.com/photo-1769089220479-5389dc5d2268?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHwxMzB8fHxlbnwwfHx8fHw%3D",
      "https://images.unsplash.com/photo-1600486913747-55e5470d6f40?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://images.unsplash.com/photo-1484515991647-c5760fcecfc7?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDR8fG1hbnxlbnwwfHwwfHx8MA%3D%3D",
      "https://images.unsplash.com/photo-1566753323558-f4e0952af115?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDB8fG1hbnxlbnwwfHwwfHx8MA%3D%3D",
    ];
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < images.length; i++)
            Align(
              widthFactor: .4,
              alignment: Alignment.center,
              child: Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white)),
                margin: EdgeInsets.only(left: i.toDouble() * 10),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(images[i]),
                ),
              ),
            )
        ],
      ),
    );
  }
}
