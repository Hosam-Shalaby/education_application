// ignore_for_file: camel_case_types, library_private_types_in_public_api

import 'package:education/constant.dart';
import 'package:education/view/widgets/chat/chatTile.dart';
import 'package:education/view/widgets/chat/storyButton.dart';
import 'package:flutter/material.dart';

class chatPage extends StatefulWidget {
  const chatPage({super.key});

  @override
  _chatPageState createState() => _chatPageState();
}

class _chatPageState extends State<chatPage> {
  Color mainColor = Kmaincolor;
  var containerRadius = const Radius.circular(30.0);

  List<String> imageUrl = [
    "https://i.pinimg.com/originals/2e/2f/ac/2e2fac9d4a392456e511345021592dd2.jpg",
    "https://randomuser.me/api/portraits/men/86.jpg",
    "https://randomuser.me/api/portraits/women/80.jpg",
    "https://randomuser.me/api/portraits/men/43.jpg",
    "https://randomuser.me/api/portraits/women/49.jpg",
    "https://randomuser.me/api/portraits/women/45.jpg",
    "https://randomuser.me/api/portraits/women/0.jpg",
    "https://randomuser.me/api/portraits/women/1.jpg",
    "https://randomuser.me/api/portraits/men/0.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        elevation: 0.0,
        title: const Text("محادثات تعليمية"),
        backgroundColor: mainColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_horiz),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100.0,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  storyButton(imageUrl[0], "Aya"),
                  storyButton(imageUrl[1], "Hossam"),
                  storyButton(imageUrl[2], "Nora"),
                  storyButton(imageUrl[3], "Ibrahim "),
                  storyButton(imageUrl[4], " Aliaa"),
                  storyButton(imageUrl[5], "Dana"),
                  storyButton(imageUrl[6], "Hanan"),
                ],
              ),
            ),
          ),

          //Now let's create our chat timeline
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: containerRadius, topRight: containerRadius),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 12.0, right: 12.0, top: 10.0),
                child: ListView(
                  children: [
                    chatTile(imageUrl[0], "userName", "msg", "9 Am", false),
                    chatTile(imageUrl[1], "userName", "msg", "8 Am", true),
                    chatTile(imageUrl[2], "userName", "msg", "6 Am", true),
                    chatTile(
                        imageUrl[3], "userName", "msg", "Yesterday", false),
                    chatTile(
                        imageUrl[5], "userName", "msg", "Yesterday", false),
                    chatTile(imageUrl[4], "userName", "msg", "Jan 20", true),
                    chatTile(imageUrl[6], "userName", "msg", "Mar 20", true),
                    chatTile(imageUrl[2], "userName", "msg", "May 20", true),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
