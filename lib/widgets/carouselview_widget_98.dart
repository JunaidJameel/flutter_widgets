import 'package:flutter/material.dart';

class CarouselViewWidget extends StatelessWidget {
  CarouselViewWidget({super.key});

  final List<String> images = [
    'https://i.pinimg.com/736x/e1/19/46/e119461eb1dcac74ee5f6bc6a11e1510.jpg',
    'https://i.pinimg.com/736x/c4/a8/20/c4a8203d34216677b728911e3757c4d1.jpg',
    'https://i.pinimg.com/1200x/2e/c7/83/2ec7839fc8fb200ef3f3ea95d8ccc02f.jpg',
    'https://i.pinimg.com/736x/4a/e6/71/4ae671b25d708430195942d313083d7e.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: CarouselView(
          itemExtent: 300,
          children: List.generate(
              images.length,
              (index) => Image.network(
                    images[index],
                    fit: BoxFit.cover,
                  ))),
    );
  }
}
