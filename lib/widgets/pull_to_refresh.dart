import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModernPullToRefreshWidget extends StatelessWidget {
  ModernPullToRefreshWidget({super.key});

  Future<void> _onRefresh() async {
    await Future.delayed(const Duration(seconds: 1));
  }

  final List<String> post = [
    'https://i.pinimg.com/736x/e7/c0/42/e7c0425235957102645b79faf4acbf3b.jpg',
    'https://i.pinimg.com/736x/3b/e7/53/3be7533b0d88ea3aebe4204e3f8b4fd6.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: CustomRefreshIndicator(
          onRefresh: _onRefresh,
          builder: (context, child, controller) {
            return Stack(
              alignment: Alignment.topCenter,
              children: [
                Transform.translate(
                  offset: Offset(0, controller.value * 100),
                  child: child,
                ),
                Positioned(
                  top: 20,
                  child: Opacity(
                      opacity: controller.value.clamp(.0, 1),
                      child: CupertinoActivityIndicator(radius: 22)),
                ),
              ],
            );
          },
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 20),
            itemBuilder: (context, index) {
              return ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.network(post[index]));
            },
            separatorBuilder: (context, index) => SizedBox(height: 20),
            itemCount: post.length,
          ),
        ),
      ),
    );
  }
}
