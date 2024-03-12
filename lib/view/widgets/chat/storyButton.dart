// ignore_for_file: file_names

import 'package:flutter/material.dart';

Widget storyButton(String imgUrl, String userName) {
  return Padding(
    padding: const EdgeInsets.only(right: 10.0),
    child: Column(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(imgUrl),
          radius: 26.0,
        ),
        const SizedBox(
          height: 5.0,
        ),
        Text(
          userName,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    ),
  );
}