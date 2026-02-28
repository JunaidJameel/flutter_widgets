import 'package:flutter/material.dart';
import 'package:story/story.dart';

class StoryPackage extends StatelessWidget {
  StoryPackage({super.key});

  final List<List<String>> stories = [
    [
      "https://i.pinimg.com/736x/31/d3/4e/31d34e74fb09c4fb59bb09d786816b45.jpg",
      "https://i.pinimg.com/736x/46/18/b0/4618b0babcae2ebb432b265d90e7199e.jpg",
      "https://i.pinimg.com/736x/e9/57/b5/e957b5a7ac4b4fbb47f6b43eed7a465a.jpg",
    ],
    [
      "https://i.pinimg.com/1200x/a8/bd/16/a8bd163bd5fcd9adf0c5f6a6c160f8ed.jpg",
      "https://i.pinimg.com/1200x/6c/75/7a/6c757afd8f588959c8338796831579e4.jpg"
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return StoryPageView(
      itemBuilder: (context, pageIndex, storyIndex) {
        final imageUrl = stories[pageIndex][storyIndex];

        return StoryImage(
          key: ValueKey(imageUrl),
          imageProvider: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        );
      },
      storyLength: (pageIndex) => stories[pageIndex].length,
      pageLength: stories.length,
      onPageLimitReached: () => Navigator.pop(context),
    );
  }
}
