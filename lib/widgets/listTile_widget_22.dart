import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      tileColor: Colors.purple[200],
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage(
            'https://i.pinimg.com/736x/d0/fe/4e/d0fe4e76983fcd6ebf3675509690e26a.jpg'),
      ),
      title: Text(
        'ListTile ',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      ),
      subtitle: Text(
        'Learn Flutter with fun!',
        style: TextStyle(
            color: Colors.black87, fontSize: 15, fontWeight: FontWeight.w500),
      ),
      trailing: Text(
        '2 Min',
        style: TextStyle(
            fontSize: 15, color: Colors.black87, fontWeight: FontWeight.bold),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
