import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class LikeButtonPackage extends StatelessWidget {
  const LikeButtonPackage({super.key});

  final int count = 1;

  @override
  Widget build(BuildContext context) {
    return LikeButton(
      animationDuration: Duration(seconds: 1),
      size: 50,
      likeCount: count,
      onTap: (isLiked) async {
        return !isLiked;
      },
      likeBuilder: (isLiked) {
        return Icon(
          Icons.favorite,
          color: isLiked ? Colors.red : Colors.grey,
          size: 40,
        );
      },
    );
  }
}
