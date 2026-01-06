import 'package:flutter/material.dart';

class PageViewBuilderWidget extends StatelessWidget {
  PageViewBuilderWidget({super.key});

  final List<String> _imageList = [
    'https://i.pinimg.com/1200x/9b/c6/08/9bc608713378999215281530894c2ba0.jpg',
    'https://i.pinimg.com/1200x/45/91/5e/45915e7e1287567d244a51bab5fbc62f.jpg',
    'https://i.pinimg.com/1200x/23/23/6b/23236b5278366890ae07069792e92cda.jpg',
    'https://i.pinimg.com/736x/06/08/0f/06080f8ab7679e722b9b40716775f10e.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: PageView.builder(
            itemCount: _imageList.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(bottom: 5),
                decoration: BoxDecoration(
                    color: Colors.deepPurple[200],
                    image: DecorationImage(
                        image: NetworkImage(_imageList[index]),
                        fit: BoxFit.cover)),
              );
            }));
  }
}
