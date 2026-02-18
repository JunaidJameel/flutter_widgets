import 'package:flutter/material.dart';
import 'package:story/story_image.dart';
import 'package:story/story_page_view.dart';

class SimpleStoryPage extends StatelessWidget {
  SimpleStoryPage({super.key});

  final List<List<String>> stories = [
    [
      "https://i.pinimg.com/736x/19/06/60/1906600131fa6b3e60295ee06aeaa2a4.jpg",
      "https://i.pinimg.com/736x/cb/91/e7/cb91e72ec952df1da65b9bc96f3d1231.jpg",
    ],
    [
      "https://i.pinimg.com/736x/b2/87/d1/b287d159ee1aabc1ab1a252083ad8bdb.jpg",
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoryPageView(
        itemBuilder: (context, pageIndex, storyIndex) {
          final imageUrl = stories[pageIndex][storyIndex];

          return StoryImage(
            key: ValueKey(imageUrl),
            imageProvider: NetworkImage(imageUrl),
            fit: BoxFit.cover,
          );
        },
        pageLength: stories.length,
        storyLength: (pageIndex) => stories[pageIndex].length,
        onPageLimitReached: () => Navigator.pop(context),
      ),
    );
  }
}
