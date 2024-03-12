// ignore_for_file: must_be_immutable, sort_child_properties_last

import 'package:education/constant.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      this.color,
      this.height,
      this.width,
      this.text,
      this.onTap,
      required this.fontsize});
  double? height;
  double? width;
  String? text;
  Color? color;
  VoidCallback? onTap;
  double? fontsize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            '$text',
            style: TextStyle(
                fontSize: fontsize, color: Colors.white, fontFamily: 'cairo'),
          ),
        ),
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(50),
            border: Border.all(color: KSecondaryColor
                //  Colors.white60
                )),
      ),
    );
  }
}
