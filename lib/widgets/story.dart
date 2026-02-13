import 'package:flutter/material.dart';
import 'package:story/story_image.dart';
import 'package:story/story_page_view.dart';

class UserModel {
  UserModel(this.stories, this.userName, this.imageUrl);

  final List<StoryModel> stories;
  final String userName;
  final String imageUrl;
}

class StoryModel {
  StoryModel(this.imageUrl);

  final String imageUrl;
}

final sampleUsers = [
  UserModel([
    StoryModel(
        "https://i.pinimg.com/736x/19/06/60/1906600131fa6b3e60295ee06aeaa2a4.jpg"),
    StoryModel(
        "https://i.pinimg.com/736x/cb/91/e7/cb91e72ec952df1da65b9bc96f3d1231.jpg"),
  ], "User1",
      "https://i.pinimg.com/736x/6c/eb/3b/6ceb3b56d989c16df943922beae8f42f.jpg"),
  UserModel([
    StoryModel(
        "https://i.pinimg.com/736x/b2/87/d1/b287d159ee1aabc1ab1a252083ad8bdb.jpg"),
  ], "User2",
      "https://i.pinimg.com/736x/db/bc/7a/dbbc7a02e4b6fa7bba2d20eb7bfdef13.jpg"),
  UserModel([
    StoryModel(
        "https://i.pinimg.com/736x/04/3d/87/043d87521db03107f3d081830643cff3.jpg"),
  ], "User3",
      "https://i.pinimg.com/736x/04/3e/44/043e44f0da2f7bf0b182d68a5779806e.jpg"),
  UserModel([
    StoryModel(
        "https://i.pinimg.com/736x/59/a0/9f/59a09f6ec1dd6ee361c100f7402c68c5.jpg"),
  ], "User4",
      "https://i.pinimg.com/736x/0b/a2/77/0ba2776428c2b2920772018e565d3bbe.jpg"),
];

class StoryPage extends StatefulWidget {
  const StoryPage({super.key});

  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  late ValueNotifier<IndicatorAnimationCommand> indicatorAnimationController;

  @override
  void initState() {
    super.initState();
    indicatorAnimationController = ValueNotifier<IndicatorAnimationCommand>(
        IndicatorAnimationCommand.resume);
  }

  @override
  void dispose() {
    indicatorAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoryPageView(
        itemBuilder: (context, pageIndex, storyIndex) {
          final user = sampleUsers[pageIndex];
          final story = user.stories[storyIndex];
          return Stack(
            children: [
              Positioned.fill(
                child: Container(color: Colors.black),
              ),
              Positioned.fill(
                child: StoryImage(
                  key: ValueKey(story.imageUrl),
                  imageProvider: NetworkImage(
                    story.imageUrl,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 44, left: 8),
                child: Row(
                  children: [
                    Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(user.imageUrl),
                          fit: BoxFit.fitWidth,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                  ],
                ),
              ),
            ],
          );
        },
        gestureItemBuilder: (context, pageIndex, storyIndex) {
          return Stack(children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 32),
                child: IconButton(
                  padding: EdgeInsets.zero,
                  color: Colors.white,
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),
          ]);
        },
        indicatorAnimationController: indicatorAnimationController,
        initialStoryIndex: (pageIndex) {
          if (pageIndex == 0) {
            return 1;
          }
          return 0;
        },
        pageLength: sampleUsers.length,
        storyLength: (int pageIndex) {
          return sampleUsers[pageIndex].stories.length;
        },
        onPageLimitReached: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
