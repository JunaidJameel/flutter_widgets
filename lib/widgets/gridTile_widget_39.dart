import 'package:flutter/material.dart';

class GridTileWidget extends StatelessWidget {
  const GridTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: GridTile(
            header: Container(
              height: 60,
              color: Colors.black54,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/736x/eb/76/a4/eb76a46ab920d056b02d203ca95e9a22.jpg'),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Mark Brown",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
            ),
            footer: Container(
                height: 60,
                color: Colors.black54,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite),
                      color: Colors.red,
                    ),
                    Text(
                      "I'm Working on a new Series",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                )),
            child: Image.network(
              'https://i.pinimg.com/736x/dd/09/e7/dd09e7432f1dada17ffade437c178628.jpg',
            )),
      ),
    );
  }
}
