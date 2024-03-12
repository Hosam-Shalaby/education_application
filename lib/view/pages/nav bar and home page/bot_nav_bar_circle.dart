// ignore_for_file: camel_case_types, depend_on_referenced_packages

import 'package:education/constant.dart';
import 'package:education/view/pages/chat/chat_page.dart';
import 'package:education/view/pages/nav%20bar%20and%20home%20page/home_page.dart';
import 'package:education/view/pages/notifications/notifications_page.dart';
import 'package:education/view/pages/profile/profile_page.dart';
import 'package:education/view/pages/schedule/schedule_page.dart';
import 'package:education/view/pages/setting_page.dart';
import 'package:education/view/pages/practice/practice_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spincircle_bottom_bar/modals.dart';
import 'package:spincircle_bottom_bar/spincircle_bottom_bar.dart';

// final selectedVideoProvider = StateProvider<Video?>((ref) => null);

class botnavbarCircle extends StatefulWidget {
  const botnavbarCircle({super.key});

  @override
  State<botnavbarCircle> createState() => _botnavbarCircleState();
}

class _botnavbarCircleState extends State<botnavbarCircle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
        toolbarHeight: 70,
        actions: [
          GestureDetector(
            onTap: () {
              navigator?.push(
                MaterialPageRoute(
                  builder: (context) {
                    return const profilePage();
                  },
                ),
              );
            },
            child: const CircleAvatar(
              maxRadius: 30,
              backgroundImage: AssetImage('assets/images/3257690.png'),
            ),
          ),
        ],
        centerTitle: true,
        title: const Text(
          ".... مرحبا بك ",
        ),
        backgroundColor: Kmaincolor,
      ),
      body: SpinCircleBottomBarHolder(
        bottomNavigationBar: SCBottomBarDetails(
            circleColors: [Colors.white, Colors.orange, Colors.redAccent],
            iconTheme: const IconThemeData(color: Colors.black45),
            activeIconTheme: const IconThemeData(color: Colors.orange),
            backgroundColor: Colors.white,
            titleStyle: const TextStyle(color: Colors.black45, fontSize: 12),
            activeTitleStyle: const TextStyle(
                color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),
            actionButtonDetails: SCActionButtonDetails(
                color: Kmaincolor,
                icon: const Icon(
                  Icons.expand_less,
                  color: Colors.white,
                ),
                elevation: 2),
            elevation: 2.0,
            items: [
              SCBottomBarItem(
                title: 'الرئيسية',
                icon: Icons.home,
                onPressed: (index) {
                  setState(() {
                    Get.to(const homePage());
                    // navigator?.push(
                    //   MaterialPageRoute(
                    //     builder: (context) {
                    //       return const homePage();
                    //     },

                    //   ),
                    // );
                  });
                },
              ),
              SCBottomBarItem(
                title: 'بنك الاسئلة',
                icon: Icons.question_answer,
                onPressed: () {
                  Get.to(const practicePage());
                },
              ),
              SCBottomBarItem(
                title: 'الاشعارات',
                icon: Icons.notifications,
                onPressed: () {
                  Get.to(const notificationsPage());
                },
              ),
              SCBottomBarItem(
                  title: 'المحادثات',
                  icon: Icons.chat,
                  onPressed: () {
                    Get.to(const chatPage());
                  })
            ],
            circleItems: [
              //Suggested Count: 3
              SCItem(
                  icon: const Icon(Icons.person),
                  onPressed: () {
                    Get.to(const profilePage());
                  }),
              SCItem(
                  icon: const Icon(Icons.schedule_sharp),
                  onPressed: () {
                    Get.to(const shedulePage());
                  }),
              SCItem(
                  icon: const Icon(Icons.settings),
                  onPressed: () {
                    Get.to(const settingPage());
                  })
            ],
            bnbHeight: 65 // Suggested Height 80
            ),
        child: const homePage(),
      ),

      // body: SpinCircleBottomBarHolder(
      //   bottomNavigationBar: SCBottomBarDetails(c
      //       backgroundColor: Color.fromARGB(255, 119, 200, 211),
      //       bnbHeight: 65,
      //       items: [
      //         SCBottomBarItem(
      //           title: 'الاعدادت',
      //           icon: Icons.settings,
      //           onPressed: () {},
      //         ),
      //         SCBottomBarItem(
      //           title: 'الجدول',
      //           icon: Icons.schedule,
      //           onPressed: () {},
      //         ),
      //         SCBottomBarItem(
      //           title: 'الاشعارات',
      //           icon: Icons.notifications,
      //           onPressed: () {},
      //         ),
      //         SCBottomBarItem(
      //           title: 'الشات',
      //           icon: Icons.chat,
      //           onPressed: () {},
      //         ),
      //       ],
      //       circleItems: [
      //         SCItem(
      //           icon: const Icon(Icons.person),
      //           onPressed: () {},
      //         ),
      //         SCItem(
      //           icon: const Icon(Icons.person),
      //           onPressed: () {},
      //         ),
      //         SCItem(
      //           icon: const Icon(Icons.person),
      //           onPressed: () {},
      //         ),
      //       ],
      //       circleColors: [
      //         Colors.white,
      //         Colors.black,
      //         Colors.blue
      //       ]),
      //   child: Container(),
      // ),
      // bottomNavigationBar: SizedBox(
      //   height: 60,
      //   child: BottomNavigationBar(
      //       backgroundColor: Colors.white,
      //       selectedItemColor: Kmaincolor,
      //       unselectedItemColor: Colors.blueGrey,
      //       currentIndex: selectedindex,
      //       iconSize: 20,
      //       selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      //       unselectedLabelStyle:
      //           const TextStyle(fontWeight: FontWeight.bold),
      //       onTap: (index) {
      //         setState(() {
      //           selectedindex = index;
      //         });
      //       },
      //       items: const [
      //         BottomNavigationBarItem(
      //             label: 'الاعدادات', icon: Icon(Icons.settings)),
      //         BottomNavigationBarItem(
      //             label: 'الجدول', icon: Icon(Icons.schedule)),
      //         BottomNavigationBarItem(
      //             label: 'الرئيسية', icon: Icon(Icons.home)),
      //         BottomNavigationBarItem(
      //             label: ' الشات', icon: Icon(Icons.local_offer)),
      //         BottomNavigationBarItem(
      //             label: ' بنك الاسئلة', icon: Icon(Icons.person))
      //       ]),
    );
  }
}
