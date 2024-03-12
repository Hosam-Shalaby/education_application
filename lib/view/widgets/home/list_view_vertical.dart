// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class listViewvertical extends StatelessWidget {
  const listViewvertical({
    super.key,
    required this.image,
    required this.titleText,
  });
  final String image;
  final String titleText;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.fill)),
          ),
          ListTile(
            title: Text(
              titleText,
              style: const TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
