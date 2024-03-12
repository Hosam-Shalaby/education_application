// ignore_for_file: camel_case_types

import 'package:education/constant.dart';
import 'package:flutter/material.dart';

class daysOfWeek extends StatelessWidget {
  const daysOfWeek({super.key, required this.day, required this.dayNum});
  final String day;
  final String dayNum;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(1),
      height: 60,
      width: 65,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Kmaincolor,
          border: Border.all(color: KSecondaryColor)),
      child: ListTile(
        textColor: Colors.white,
        title: Text(
          day,
          style: const TextStyle(fontSize: 12),
        ),
        subtitle: Text(
          dayNum,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
