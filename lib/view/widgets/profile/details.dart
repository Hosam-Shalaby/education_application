// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class profileData extends StatelessWidget {
  const profileData(
      {super.key,
      required this.subTitle,
      required this.title,
      required this.icon});
  final String subTitle;
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      subtitle: Text(
        subTitle,
        // 'حسام شلبي عبدالرازق شلبي',
        style: const TextStyle(color: Colors.black, fontSize: 15),
      ),
      title: Text(
        title,
        // 'اسم المستخدم',
        style: const TextStyle(
          color: Colors.black,
          fontSize: 14.0,
        ),
      ),
      leading: Icon(
        icon,
        // Icons.person,
        color: Colors.black,
        size: 30,
      ),
      trailing: const Icon(
        Icons.edit,
        color: Colors.black,
        size: 25,
      ),
    );
  }
}
