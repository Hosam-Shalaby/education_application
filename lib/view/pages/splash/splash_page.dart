// ignore_for_file: file_names, camel_case_types, avoid_web_libraries_in_flutter

import 'dart:async';

import 'package:education/view/pages/on%20boarding/onboarding_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../nav bar and home page/bot_nav_bar_circle.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  startTimer() {
    Timer(
      const Duration(seconds: 5),
      () async {
        if (FirebaseAuth.instance.currentUser != null) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const botnavbarCircle(),
            ),
          );
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const onboardingPage(),
            ),
          );
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: CircleAvatar(
                  maxRadius: 150,
                  child: Image.asset(
                    'assets/images/ss.png',
                    width: 200.w,
                  ))),
          SizedBox(height: 20.h),
          Center(
            child: Text(
              'المكتبة',
              style: TextStyle(
                  fontSize: 33.sp,
                  color: Colors.white,
                  fontFamily: 'cairo',
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
