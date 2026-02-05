import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingBarPackage extends StatelessWidget {
  const RatingBarPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RatingBar.builder(
        minRating: 1,
        itemBuilder: (context, index) {
          return const Icon(Icons.star, color: Colors.amber);
        },
        onRatingUpdate: (rating) {},
        unratedColor: Colors.grey.shade600,
        itemSize: 50,
        direction: Axis.horizontal,
        allowHalfRating: true,
      ),
    );
  }
}
