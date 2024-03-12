// ignore_for_file: camel_case_types, file_names, non_constant_identifier_names

import 'package:education/view/pages/video_data.dart';
import 'package:education/view/widgets/video%20card/Video_Card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/SliverAppBar/custom_sliver_app_bar.dart';

final selectedVideoProvider = StateProvider<Video?>((ref) => null);

class arabicLanguage extends StatelessWidget {
  const arabicLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const CustomSliverAppBar(),
          SliverPadding(
            padding: const EdgeInsets.only(bottom: 5),
            sliver: SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
              final video = videos[index];
              return VideoCard(video: video);
            }, childCount: videos.length)),
          ),
        ],
      ),
    );
  }
}
