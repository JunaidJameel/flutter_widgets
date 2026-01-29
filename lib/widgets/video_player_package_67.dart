import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget({super.key});

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(
      Uri.parse(
        'https://github.com/JunaidJameel/flutter_widgets/blob/main/assets/video.mp4?raw=true',
      ),
    )..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_controller.value.isInitialized) {
      return const Center(
        child: CircularProgressIndicator(
          color: Colors.white,
        ),
      );
    }

    return GestureDetector(
      onTap: () async {
        _controller.value.isPlaying
            ? await _controller.pause()
            : await _controller.play();
        setState(() {});
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            height: double.infinity,
            child: VideoPlayer(_controller),
          ),
          Icon(
            !_controller.value.isPlaying ? Icons.play_circle_outline : null,
            size: 64,
            color: Colors.white,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: VideoProgressIndicator(
              padding: EdgeInsets.all(40),
              _controller,
              allowScrubbing: true,
            ),
          ),
        ],
      ),
    );
  }
}
