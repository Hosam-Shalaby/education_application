// ignore_for_file: camel_case_types

import 'package:education/constant.dart';
import 'package:education/view/widgets/notification/row_notification.dart';
import 'package:flutter/material.dart';

class notificationsPage extends StatelessWidget {
  const notificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   icon: const Icon(Icons.read_more),
        //   onPressed: () {},
        // ),
        toolbarHeight: 70,
        centerTitle: true,
        title: const Text(
          " الاشـعـارات  ",
        ),
        backgroundColor: Kmaincolor,
      ),
      // drawer: const Drawer(),
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'جديدة',
              textAlign: TextAlign.end,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          notification(
            image: 'assets/images/Hossam.png',
            time: 'منذ ساعة',
            notificationText: ' قام بإضافة فيديو جديد  ',
            usernameText: 'أستاذ حسام',
          ),
          notification(
            image: 'assets/images/chat1.png',
            time: 'منذ 50 دقيقة',
            notificationText: ' قامت بالبث المباشر   ',
            usernameText: 'أستاذ أية',
          ),
          notification(
            image: 'assets/images/chat2.png',
            time: 'منذ 20 دقيقة',
            notificationText: ' قام بإضافة فيديو جديد  ',
            usernameText: 'أستاذ حسام',
          ),
          notification(
            image: 'assets/images/chat3.png',
            time: 'منذ 60 دقيقة',
            notificationText: ' قامت بالبث المباشر   ',
            usernameText: 'أستاذ علياء',
          ),
          notification(
            image: 'assets/images/chat4.png',
            time: 'منذ ساعة',
            notificationText: ' قام بإضافة فيديو جديد  ',
            usernameText: 'أستاذ ابراهيم',
          ),
          notification(
            image: 'assets/images/chat2.png',
            time: 'منذ 20 دقيقة',
            notificationText: ' قام بإضافة فيديو جديد  ',
            usernameText: 'أستاذ حسام',
          ),
          notification(
            image: 'assets/images/chat3.png',
            time: 'منذ 60 دقيقة',
            notificationText: ' قامت بالبث المباشر   ',
            usernameText: 'أستاذ علياء',
          ),
          notification(
            image: 'assets/images/chat4.png',
            time: 'منذ ساعة',
            notificationText: ' قام بإضافة فيديو جديد  ',
            usernameText: 'أستاذ ابراهيم',
          ),
          notification(
            image: 'assets/images/chat3.png',
            time: 'منذ 60 دقيقة',
            notificationText: ' قامت بالبث المباشر   ',
            usernameText: 'أستاذ علياء',
          ),
          notification(
            image: 'assets/images/chat4.png',
            time: 'منذ ساعة',
            notificationText: ' قام بإضافة فيديو جديد  ',
            usernameText: 'أستاذ ابراهيم',
          ),
          notification(
            image: 'assets/images/chat3.png',
            time: 'منذ 60 دقيقة',
            notificationText: ' قامت بالبث المباشر   ',
            usernameText: 'أستاذ علياء',
          ),
          notification(
            image: 'assets/images/chat4.png',
            time: 'منذ ساعة',
            notificationText: ' قام بإضافة فيديو جديد  ',
            usernameText: 'أستاذ ابراهيم',
          ),
        ],
      ),
    );
  }
}
