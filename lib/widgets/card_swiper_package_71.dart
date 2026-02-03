import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class CardSwiperWidget extends StatelessWidget {
  CardSwiperWidget({super.key});

  final List<String> images = [
    'https://i.pinimg.com/736x/3d/2e/b8/3d2eb880c177d0c3b688480fa8f788bf.jpg',
    'https://i.pinimg.com/1200x/93/ea/7b/93ea7b33851e1b5cead891d86c74d7b2.jpg',
    'https://i.pinimg.com/1200x/2f/b3/78/2fb3784b1ece91469a217a44aa5cfffe.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 550,
      width: double.infinity,
      child: CardSwiper(
        maxAngle: 100,
        backCardOffset: const Offset(0, 20),
        cardBuilder: (context, index, horizontal, vertical) {
          return ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(20),
              child: Image.network(
                images[index],
                fit: BoxFit.cover,
              ));
        },
        cardsCount: images.length,
      ),
    );
  }
}
