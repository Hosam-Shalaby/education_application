// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class listViewhorizontal extends StatelessWidget {
   const listViewhorizontal({super.key, required this.image, required this.titleText, required this.subTitleText});
  final String image;
  final String titleText;
  final String subTitleText;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 170,
      margin: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.fill)),
          ),
          ListTile(
            title: Text(
              titleText,
              style: const TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
            subTitleText,
              style:  const TextStyle(fontSize: 12),
            ),
           
          )
        ],
      ),
    );
  }
}
