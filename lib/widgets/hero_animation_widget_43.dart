import 'package:flutter/material.dart';

class HeroAnimationPage extends StatelessWidget {
  const HeroAnimationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HeroDetailPage())),
                child: SizedBox(
                  height: 200,
                  child: Hero(
                    tag: 'myTag',
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                          'https://i.pinimg.com/1200x/04/46/d2/0446d2728857df8124628c251e615e6b.jpg'),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HeroDetailPage extends StatelessWidget {
  const HeroDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Hero(
          tag: 'myTag',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
                'https://i.pinimg.com/1200x/04/46/d2/0446d2728857df8124628c251e615e6b.jpg'),
          ),
        ),
      ),
    );
  }
}
