// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class profileImage extends StatelessWidget {
  const profileImage({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      width: MediaQuery.of(context).size.width / 6,
      height: MediaQuery.of(context).size.height / 4,
      child: ListTile(
        title: ClipOval(
          child: Image.asset(
            image,
          ),
        ),
        trailing: const Icon(
          Icons.edit,
          color: Colors.black,
          size: 25,
        ),
      ),
    );
    //   CircleAvatar(
    // backgroundImage: AssetImage(image),
    // maxRadius: 100, minRadius: 50,
    // child: Image.asset(
    //   image,
    // ),
    // );
  }
}
