// ignore_for_file: unused_local_variable, unused_label

import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
// import 'package:provider/provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(initialVideoId: 'EAYjbQXXmrc');
    // _controller = YoutubePlayerController(initialVideoId: 'EAYjbQXXmrc');
    const YoutubePlayerFlags(mute: true, autoPlay: true);
    // initialVideoId:
    // context.read(selectedVideoProvider).state!.id;
    super.initState();
  }

  @override
  void dispose() {
    _controller.pause();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Consumer(builder: (context, watch, _) {
      // final selectedVideo = watch(selectedVideoProvider).state;
      return Container(
          color: Colors.black,
          child: Center(
            child: YoutubePlayerBuilder(
                player: YoutubePlayer(controller: _controller),
                builder: (context, player) {
                  return YoutubePlayer(controller: _controller);
                }),
          ));
    }));
  }
}
