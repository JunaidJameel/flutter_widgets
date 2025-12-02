import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              'assets/image.png',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            )),
        SizedBox(height: 30),
        Container(
          height: 400,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withValues(alpha: .3), BlendMode.darken),
                  image: NetworkImage(
                      'https://i.pinimg.com/1200x/7c/5d/18/7c5d18c7f8fa38ee3041e7d7f4801c81.jpg'))),
          child: Center(
            child: Text(
              'Flutter is Great',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}
