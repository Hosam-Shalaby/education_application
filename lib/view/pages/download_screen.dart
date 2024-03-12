// ignore_for_file: camel_case_types, use_build_context_synchronously

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

class downloadScreen extends StatefulWidget {
  const downloadScreen({super.key});

  @override
  State<downloadScreen> createState() => _downloadScreenState();
}

class _downloadScreenState extends State<downloadScreen> {
  String videoTitle = '';
  String videoPublishDate = '';
  String videoID = '';
  double progress = 0;
  bool _downloading = false;
  final TextEditingController _urlTextFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: TextField(
                controller: _urlTextFieldController,
                onChanged: (value) {
                  getVideoInfo(value);
                },
                decoration: const InputDecoration(label: Text('Put URL here')),
              ),
            ),
          ),
          Image.network('https://img.youtube.com/vi/$videoID/0.jpg',
              height: 250),
          Text(
            videoTitle,
            textAlign: TextAlign.center,
          ),
          Text(videoPublishDate),
          TextButton.icon(
              onPressed: () {
                downloadVideoInfo(_urlTextFieldController.text);
              },
              icon: const Icon(Icons.download),
              label: const Text('Start download')),
          _downloading
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: LinearProgressIndicator(
                    value: progress,
                    backgroundColor: Colors.blueAccent,
                    valueColor:
                        const AlwaysStoppedAnimation<Color>(Colors.greenAccent),
                  ),
                )
              : Container()
        ],
      ),
    );
  }

  Future<void> getVideoInfo(url) async {
    var youtubeInfo = YoutubeExplode();
    var video = await youtubeInfo.videos.get(url);
    setState(() {
      videoTitle = video.title;
      videoPublishDate = video.publishDate.toString();
      videoID = video.id.toString();
    });
  }

  Future<void> downloadVideoInfo(id) async {
    var permission = await Permission.storage.request();
    if (permission.isGranted) {
      if (_urlTextFieldController.text != '')
      // download video
      {
        setState(() {
          _downloading = true;
        });
        setState(() {
          progress = 0;
        });
        var youtubeExplode = YoutubeExplode();
        // get video metadata
        var video = await youtubeExplode.videos.get(id);
        var manifest =
            await youtubeExplode.videos.streamsClient.getManifest(id);
        var streams = manifest.muxed.withHighestBitrate();
        var audio = streams;
        var audioStream = youtubeExplode.videos.streamsClient.get(audio);
        // create a directory
        Directory appDocDir = await getApplicationDocumentsDirectory();
        String appDocPath = appDocDir.path;
        var file = File('appDocPath/${video.id}');
        // delete file if exist
        if (file.existsSync()) {
          file.deleteSync();
        }
        var output = file.openWrite(mode: FileMode.writeOnlyAppend);
        var size = audio.size.totalBytes;
        var count = 0;
        await for (final data in audioStream) {
          count += data.length;
          // calculate the curent progress
          double val = ((count / size));

          var msg = '${video.title} Downloaded to $appDocPath/${video.id}';
          for (val; val == 1.0; val++) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(msg),
            ));
          }
          setState(() {
            progress = val;
          });
          output.add(data);
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Add Youtube URL First  Please'),
        ));
        setState(() {
          _downloading = false;
        });
      }
    } else {
      await Permission.storage.request();
    }
  }
}
