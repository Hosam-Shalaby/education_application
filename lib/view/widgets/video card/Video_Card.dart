// ignore_for_file: file_names, implementation_imports, prefer_typing_uninitialized_variables, unused_import

import 'package:education/view/pages/video_screen.dart';
import 'package:flutter/material.dart';
import '../../pages/Arabic_page.dart';
import '../../pages/video_data.dart';
import 'package:timeago/timeago.dart' as timeago;
// import 'pakage:flutter_riverpod/src/provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// import 'package:provider/provider.dart';
// import 'package:youtube_explode_dart/youtube_explode_dart.dart';

class VideoCard extends StatelessWidget {
  const VideoCard({super.key, required this.video});
  final Video video;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // context.read<Video>(selectedVideoProvider).state = video;
        Navigator.push(context,
            MaterialPageRoute(builder: ((context) => const VideoScreen())));
      },
      child: Column(
        children: [
          Stack(children: [
            Image.network(
              video.thumbnailUrl,
              height: 220,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
                bottom: 8,
                right: 8,
                child: Container(
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(4),
                    color: Colors.black,
                    child: Text(
                      video.duration,
                      style: const TextStyle(color: Colors.white),
                    )))
          ]),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                CircleAvatar(
                  foregroundImage: NetworkImage(video.channel.channelImageUrl),
                ),
                const SizedBox(width: 30),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: Text(
                          video.title,
                          maxLines: 2,
                          style: const TextStyle(fontSize: 11),
                        ),
                      ),
                      Flexible(
                          child: Text(
                        '${video.channel.channelName} | ${video.viewCount} | ${timeago.format(video.timestamp)}',
                        maxLines: 2,
                        style: const TextStyle(fontSize: 12),
                      ))
                    ],
                  ),
                ),
                const Icon(
                  Icons.more_vert,
                  size: 20,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
