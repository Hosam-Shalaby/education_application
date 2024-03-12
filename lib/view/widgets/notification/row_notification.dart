// ignore_for_file: camel_case_types, unused_import

import 'package:education/constant.dart';
import 'package:flutter/material.dart';

class notification extends StatelessWidget {
  const notification(
      {super.key,
      required this.notificationText,
      required this.usernameText,
      required this.time,
      required this.image});
  final String notificationText;
  final String usernameText;
  final String time;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 2),
      color:
          // KSecondaryColor
          const Color.fromARGB(76, 102, 73, 73),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            notificationText, // ' قام بإضافة فيديو جديد  ',
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                usernameText, // ' استاذ عبدالرحمن',
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                time, // 'منذ ساعة',
                // textAlign: TextAlign.right,
              ),
            ],
          ),
          CircleAvatar(
            maxRadius: 30,
            backgroundImage: AssetImage(
              image, // 'assets/images/Hossam.png',
            ),
          ),
        ],
      ),
    );
  }
}
