import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class StaggeredGridViewPackage extends StatelessWidget {
  StaggeredGridViewPackage({super.key});

  final List<String> imageList = [
    'https://i.pinimg.com/736x/31/33/ec/3133ecc2bc1861556a1724a9afea1d4b.jpg',
    'https://i.pinimg.com/736x/da/f5/0b/daf50bf2dd0b275ffdec30a727ed6d6a.jpg',
    'https://i.pinimg.com/1200x/99/ca/b0/99cab04b31c913b99f9a05d70a508b64.jpg',
    'https://i.pinimg.com/1200x/4c/70/ee/4c70eee8d5d37493752831a9421ef1d6.jpg',
    'https://i.pinimg.com/1200x/3f/f0/05/3ff005e7a2eeabc82b1c4faf6d52a861.jpg',
    'https://i.pinimg.com/1200x/fc/65/db/fc65db8ba66024d3c85f320bab36cc95.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.builder(
      itemCount: imageList.length,
      gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(20),
            child: Image.network(imageList[index])),
      ),
    );
  }
}
