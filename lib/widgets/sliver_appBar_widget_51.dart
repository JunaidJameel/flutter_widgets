import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SliverAppbarWidget extends StatelessWidget {
  const SliverAppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://i.pinimg.com/736x/9f/f8/d4/9ff8d4e19a75d14fb1711b81260ae6f9.jpg',
                fit: BoxFit.cover,
              ),
            ),
            pinned: true,
            backgroundColor: Colors.black87,
            title: Text(
              'Sliver AppBar',
              style: GoogleFonts.oswald(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            expandedHeight: 250,
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (context, index) => Padding(
              padding: const EdgeInsets.all(16.0),
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(20),
                child: Image.network(
                    'https://i.pinimg.com/1200x/74/18/c9/7418c9cd4713cd3c17c01cececeaab97.jpg'),
              ),
            ),
            childCount: 3,
          ))
        ],
      ),
    );
  }
}
