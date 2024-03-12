// // ignore_for_file: camel_case_types, depend_on_referenced_packages

// import 'package:education/constant.dart';
// import 'package:education/screen/nav%20bar%20and%20home%20page/home_page.dart';
// import 'package:education/screen/profile_page.dart';
// import 'package:education/screen/schedule_page.dart';
// import 'package:education/screen/setting_page.dart';
// import 'package:education/screen/training_page.dart';
// import 'package:flutter/material.dart';

// class botnavbar extends StatefulWidget {
//   const botnavbar({super.key});

//   @override
//   State<botnavbar> createState() => _botnavbarState();
// }

// class _botnavbarState extends State<botnavbar> {
//   int selectedindex = 2;
//   List screens = [
//     const settingPage(),
//     const trainingPage(),
//     const homePage(),
//     const shedulePage(),
//     const profilePage(),
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: screens[selectedindex],
//         bottomNavigationBar: SizedBox(
//           height: 60,
//           child: BottomNavigationBar(
//               backgroundColor: Colors.white,
//               selectedItemColor: Kmaincolor,
//               unselectedItemColor: Colors.blueGrey,
//               currentIndex: selectedindex,
//               iconSize: 20,
//               selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
//               unselectedLabelStyle:
//                   const TextStyle(fontWeight: FontWeight.bold),
//               onTap: (index) {
//                 setState(() {
//                   selectedindex = index;
//                 });
//               },
//               items: const [
//                 BottomNavigationBarItem(
//                     label: 'الاعدادات', icon: Icon(Icons.settings)),
//                 BottomNavigationBarItem(
//                     label: 'الجدول', icon: Icon(Icons.schedule)),
//                 BottomNavigationBarItem(
//                     label: 'الرئيسية', icon: Icon(Icons.home)),
//                 BottomNavigationBarItem(
//                     label: ' الشات', icon: Icon(Icons.local_offer)),
//                 BottomNavigationBarItem(
//                     label: ' بنك الاسئلة', icon: Icon(Icons.person))
//               ]),
//         ));
//   }
// }
