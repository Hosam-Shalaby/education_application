// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class imageAndText extends StatelessWidget {
  const imageAndText({super.key, this.image, this.text});
  final String? image;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image!,
          height: 380.h,
          fit: BoxFit.fill,
        ),
        Divider(
          height: 5.h,
        ),
        Text(
          text!,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18.sp),
        )
      ]
    );
  }
}
