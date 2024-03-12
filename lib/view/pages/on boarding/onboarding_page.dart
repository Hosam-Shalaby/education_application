// ignore_for_file: camel_case_types, unused_import

import 'package:education/constant.dart';
import 'package:education/view/pages/login%20and%20registration/login_page.dart';
import 'package:education/view/widgets/custom%20widget/custom_button.dart';
import 'package:education/view/widgets/onboarding/page_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class onboardingPage extends StatefulWidget {
  const onboardingPage({super.key});

  @override
  State<onboardingPage> createState() => _onboardingPageState();
}

class _onboardingPageState extends State<onboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Divider(height: 20.h),
        SizedBox(
            height: 435.h,
            width: 400.w,
            child: PageView(children: const [
              imageAndText(
                  image: 'assets/images/1a.png.jpg',
                  text: 'تابـع معنا أحـدث الكورسات التعليمية'),
              imageAndText(
                  image: 'assets/images/2a.png.jpg',
                  text: 'تناول تدريب يومي مع  بنك الاسئله'),
              imageAndText(
                  image: 'assets/images/3a.png.jpg',
                  text: ' أبحث عن افضل المتخصصين في المواد الدراسية'),
            ])),
        Text(
          '    سـتجد كل ما تحتاجه من كورسات تعليمية ونصائح تساعدك في'
          '  تحسين معلوماتك التعليمية و البحث عن افضل المتخصصين '
          'و التواصل معهم والتدريب علي اشهر الاسئلة بشكل يومي علي جميع المواد الدراسية ',
          style: TextStyle(
            fontSize: 14.sp,
            color: Colors.black54,
          ),
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
        ),
        SizedBox(height: 10.h),
        CustomButton(
          fontsize: 18.sp,
          color: Kmaincolor,
          onTap: () {
            // Get.off(const loginPage());
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const loginPage(),
              ),
            );
            // navigator?.push(
            //   MaterialPageRoute(
            //     builder: (context) {
            //       return const loginPage();
            //     },
            //   ),
            // );
          },
          height: 40.h,
          width: 120.w,
          text: 'تخطي ',
        )
      ]),
    );
  }
}
