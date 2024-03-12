// ignore_for_file: camel_case_types

import 'package:education/constant.dart';
import 'package:flutter/material.dart';

class chooseCategory extends StatelessWidget {
  const chooseCategory({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Kmaincolor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          text, 
          style: const TextStyle(color: Colors.white, fontSize: 15),
        ),
      ),
    );
  }
}
