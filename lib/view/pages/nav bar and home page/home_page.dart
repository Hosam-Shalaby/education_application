// ignore_for_file: camel_case_types

import 'package:education/constant.dart';
import 'package:education/view/pages/Arabic_page.dart';
import 'package:education/view/widgets/home/list_view_horizontal.dart';
import 'package:education/view/widgets/home/list_view_vertical.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsetsDirectional.only(top: 10),
      children: [
        Text(
          'أشهر الكورسات والاسئلة',
          style: TextStyle(
            color: Kmaincolor,
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.end,
        ),
        SizedBox(
          height: 230.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              GestureDetector(
                onTap: () {
                  navigator?.push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const arabicLanguage();
                      },
                    ),
                  );
                },
                child: const listViewhorizontal(
                  image: 'assets/images/arabic.png',
                  titleText: 'اللغة العربية',
                  subTitleText: 'أ/عبدالرحمن',
                ),
              ),
              const listViewhorizontal(
                image: 'assets/images/eng.png',
                titleText: 'اللغة الانجليزية',
                subTitleText: 'أ/عبدالرحمن',
              ),
              const listViewhorizontal(
                image: 'assets/images/phis.png',
                titleText: ' مادة الفيزياء',
                subTitleText: 'أ/عبدالرحمن',
              ),
              const listViewhorizontal(
                image: 'assets/images/chi.png',
                titleText: ' مادة الكيمياء',
                subTitleText: 'أ/عبدالرحمن',
              ),
              const listViewhorizontal(
                image: 'assets/images/arabic.png',
                titleText: 'اللغة العربية',
                subTitleText: 'أ/عبدالرحمن',
              ),
              const listViewhorizontal(
                image: 'assets/images/anim.png',
                titleText: ' كورس الانيميشن',
                subTitleText: 'أ/عبدالرحمن',
              ),
            ],
          ),
        ),
        Text(
          'الدروس المسجلة والبث المباشر',
          style: TextStyle(
            color: Kmaincolor,
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.end,
        ),
        SizedBox(
          height: 300.h,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: const [
              listViewvertical(
                image: 'assets/images/phis.png',
                titleText: 'تسجيلات مادة الفيزياء',
              ),
              listViewvertical(
                image: 'assets/images/chi.png',
                titleText: 'تسجيلات مادة الكيمياء',
              ),
              listViewvertical(
                image: 'assets/images/eng.png',
                titleText: 'تسجيلات مادة اللغة الانجليزية',
              ),
              listViewvertical(
                image: 'assets/images/arabic.png',
                titleText: 'تسجيلات مادة اللغة العربية',
              ),
              listViewvertical(
                image: 'assets/images/phis.png',
                titleText: 'تسجيلات البث المباشر',
              ),
            ],
          ),
        )
      ],
    );
  }
}
