import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tvapp/config/theme/app.theme.dart';
import 'package:video_player/video_player.dart';

class VideoLoader extends ConsumerStatefulWidget {
  const VideoLoader({super.key, this.child});

  final Widget? child;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _VideoLoaderState();
}

class _VideoLoaderState extends ConsumerState<VideoLoader> {
  Widget? child;
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 6), () {
      setState(() {
        child = widget.child;
      });
    });
    _controller = VideoPlayerController.asset('assets/video/anim_bantel.mp4')
      ..initialize().then((_) {
        setState(() {});
      })
      ..play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
  
    if (_controller.value.isInitialized && child == null) {
      return Scaffold(
        body: Center(child: 
          LayoutBuilder(
            builder: (context, constraints) {
              return FittedBox(
                fit: BoxFit.cover,
                child: SizedBox(
                  width: constraints.maxWidth,
                  height: constraints.maxWidth / _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                ),
              );
            },
          )
        ,),
      );
    }
    return child ??
        Center(
          child: CircularProgressIndicator(
            color: AppTheme.secondaryColor(context),
          ),
        );
  }
}
