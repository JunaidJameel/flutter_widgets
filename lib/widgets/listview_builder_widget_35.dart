import 'package:flutter/material.dart';

class ListViewBuilderWidget extends StatelessWidget {
  ListViewBuilderWidget({super.key});

  final List<String> _imgList = [
    'https://i.pinimg.com/736x/5e/a4/47/5ea4478d968e9ac7cd2688beed67460a.jpg',
    'https://i.pinimg.com/736x/fb/b7/88/fbb7888f45ae967d2df3e383b474ff34.jpg',
    'https://i.pinimg.com/736x/88/1e/ac/881eace19a1ec0103db651b55526432c.jpg',
    'https://i.pinimg.com/1200x/63/dc/fa/63dcfae31b6f5f6adf05fc69e829a3e9.jpg',
    'https://i.pinimg.com/736x/1a/91/7d/1a917d22edbeb6c064eb4b7e2a9e847b.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 80),
        Expanded(
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _imgList.length,
              itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(_imgList[index]),
                    ),
                  )),
        ),
        Expanded(
          flex: 8,
          child: ListView.builder(
              itemCount: _imgList.length,
              itemBuilder: (context, index) =>
                  _builderContent(_imgList[index])),
        ),
      ],
    );
  }

  Widget _builderContent(String imageUrl) {
    return Container(
      margin: EdgeInsets.all(15),
      height: 350,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
              image: NetworkImage(imageUrl), fit: BoxFit.cover)),
    );
  }

  // Widget _builderContent(String imageIndex) {
  //   return Container(
  //     margin: EdgeInsets.all(15),
  //     height: 350,
  //     width: double.infinity,
  //     decoration: BoxDecoration(
  //         color: Colors.black87,
  //         borderRadius: BorderRadius.circular(15),
  //         image: DecorationImage(
  //             image: NetworkImage(imageIndex), fit: BoxFit.cover)),
  //   );
  // }
}
