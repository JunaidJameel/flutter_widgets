import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SlidablePackage extends StatelessWidget {
  const SlidablePackage({super.key});

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: const ValueKey(0),
      startActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (context) {},
            backgroundColor: Colors.green.shade600,
            icon: CupertinoIcons.share,
            label: 'Share',
          ),
        ],
      ),
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (context) {},
            backgroundColor: Colors.blue,
            icon: CupertinoIcons.share,
            label: 'Edit',
          ),
          SlidableAction(
            onPressed: (context) {},
            backgroundColor: Colors.red,
            icon: CupertinoIcons.share,
            label: 'Delete',
          ),
        ],
      ),
      child: ListTile(
        tileColor: Colors.white,
        leading: CircleAvatar(
          radius: 30,
          child: Icon(CupertinoIcons.person),
        ),
        title: const Text('Swipe Me !'),
        subtitle: const Text('Cool Slidable Widget'),
      ),
    );
  }
}
