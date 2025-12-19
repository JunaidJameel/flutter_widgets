import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue[300],
        title: Text(
          'Drawer',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.blue[100],
          child: ListView(
            children: [
              Center(
                child: DrawerHeader(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.network(
                        'https://i.pinimg.com/736x/be/c1/2f/bec12fcfbb56f53213fe07460497edc3.jpg'),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(CupertinoIcons.home),
                title: Text('Home'),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text('Favourite'),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
      ),
      body: const Center(
        child: Text(
          'B O D Y',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
