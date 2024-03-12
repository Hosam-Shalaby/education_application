// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class scheduleDay extends StatelessWidget {
  const scheduleDay({super.key, required this.time, required this.action});
final String time;
  final String action;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color.fromARGB(255, 142, 189, 228)),
      child: Column(
        children: [
          Text(time,
            // '09.00 - 10.00',
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(action,
            // 'بث مباشر مادة الفيزياء مع الاستاذ احمد',
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
