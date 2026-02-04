import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingBarPackage extends StatelessWidget {
  const RatingBarPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RatingBar.builder(
        initialRating: 2,
        minRating: 5,
        direction: Axis.horizontal,
        allowHalfRating: true,
        itemCount: 5,
        itemSize: 24,
        itemBuilder: (context, _) => const Icon(
          Icons.star,
          color: Colors.amber,
        ),
        unratedColor: Colors.grey.withValues(alpha: 0.3),
        onRatingUpdate: (rating) {},
      ),
    );
  }
}
