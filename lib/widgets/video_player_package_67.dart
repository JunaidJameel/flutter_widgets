import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class VideoPlayerPackage extends StatefulWidget {
  const VideoPlayerPackage({super.key});

  @override
  State<VideoPlayerPackage> createState() => _VideoPlayerPackageState();
}

class _VideoPlayerPackageState extends State<VideoPlayerPackage> {
  late VideoPlayerController _videoController;
  late ChewieController _chewieController;
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();

    _videoController = VideoPlayerController.networkUrl(
      Uri.parse(
        'https://raw.githubusercontent.com/JunaidJameel/flutter_widgets/main/assets/video.MOV',
      ),
    );

    _videoController.initialize().then((_) {
      _chewieController = ChewieController(
        videoPlayerController: _videoController,
        autoPlay: true,
        looping: true,
        showControls: true,
      );

      setState(() => _isInitialized = true);
    });
  }

  @override
  void dispose() {
    _chewieController.dispose();
    _videoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_isInitialized) {
      return const Center(
        child: CircularProgressIndicator(color: Colors.black),
      );
    }

    return AspectRatio(
      aspectRatio: _videoController.value.aspectRatio,
      child: Chewie(
        controller: _chewieController,
      ),
    );
  }
}
