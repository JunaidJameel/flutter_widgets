import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedNetworkImageWidget extends StatelessWidget {
  const CachedNetworkImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: CachedNetworkImage(
          placeholder: (context, imagePlaceHolder) {
            return CircularProgressIndicator();
          },
          imageUrl:
              'https://i.pinimg.com/736x/0b/7f/e6/0b7fe6a9971a3d661b5c10b89d94d4b8.jpg'),
    );
  }
}
