import 'package:flutter/material.dart';

class ExpansionTileWidget extends StatelessWidget {
  const ExpansionTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[400],
      child: ExpansionTile(
        backgroundColor: Colors.blue[100],
        showTrailingIcon: true,
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://i.pinimg.com/736x/6e/52/14/6e5214b1bd71d4ac8c4350301bea7593.jpg'),
        ),
        title: Text(
          'Expansion Tile',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        children: [
          ListTile(
            title: Text(
              'This is the expanded content of the Expansion Tile. You can put any widgets here.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }
}
