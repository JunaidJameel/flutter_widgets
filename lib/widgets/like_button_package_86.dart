import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class LikeButtonPackage extends StatelessWidget {
  const LikeButtonPackage({super.key});

  final int count = 1;

  @override
  Widget build(BuildContext context) {
    return LikeButton(
      likeCount: count,
      size: 50,
      onTap: (isLiked) async {
        return !isLiked;
      },
      countPostion: CountPostion.bottom,
      likeBuilder: (isLiked) {
        return Icon(
          Icons.favorite,
          color: isLiked ? Colors.red : Colors.grey,
          size: 50,
        );
      },
    );
  }
}
