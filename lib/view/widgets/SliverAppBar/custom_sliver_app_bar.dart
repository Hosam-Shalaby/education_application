import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
        floating: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.cast)),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_active_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(
            onPressed: () {},
            iconSize: 40,
            icon: const CircleAvatar(
              foregroundImage: AssetImage('assets/images/Hossam.png'),
            ),
          ),
        ],
        backgroundColor: Colors.blue,
        leadingWidth: 100,
        leading: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset('assets/images/youtube.png')));
  }
}
