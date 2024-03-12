// ignore_for_file: depend_on_referenced_packages, camel_case_types, file_names

import 'package:education/constant.dart';
import 'package:education/view/widgets/custom%20widget/custom_button.dart';
import 'package:education/view/widgets/profile/details.dart';
import 'package:education/view/widgets/profile/image.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class profilePage extends StatelessWidget {
  const profilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Kmaincolor,
        centerTitle: true,
        title: const Text('الصفحة الشخصية'),
      ),
      body: ListView(
        children: [
          const profileImage(
            image: 'assets/images/3257690.png',
          ),
          const profileData(
            subTitle: 'حسام شلبي عبدالرازق شلبي',
            title: 'اسم المستخدم',
            icon: Icons.person,
          ),
          const profileData(
            subTitle: '01023456788',
            title: 'رقم الهاتف ',
            icon: Icons.mobile_friendly,
          ),
          const profileData(
            subTitle: 'hhhhh1234@gmail.com',
            title: ' البريد الالكتروني',
            icon: Icons.email,
          ),
          const profileData(
            subTitle: '*************',
            title: ' كلمة المرور ',
            icon: Icons.lock,
          ),
          const profileData(
            subTitle: 'الصف الثالث الثانوي  ',
            title: 'المرحلة الدراسية',
            icon: Icons.school,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
            child: CustomButton(
              color: Kmaincolor,
              height: 50,
              fontsize: 18,
              width: 10,
              text: 'حذف الحساب',
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: const Text('هل تريد حذف حسابك ؟'),
                        actions: [
                          CustomButton(
                            color: Kmaincolor,
                            height: 50,
                            width: 60,
                            fontsize: 15,
                            text: 'نعم',
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return const AlertDialog(
                                      content: Text('تم الحذف بنجاح'),
                                    );
                                  });
                            },
                          ),
                          CustomButton(
                            color: Kmaincolor,
                            height: 50,
                            width: 60,
                            fontsize: 15,
                            text: 'لا',
                            onTap: () {
                              navigator?.pop(context);
                            },
                          ),
                        ],
                      );
                    });
              },
            ),
          )
        ],
      ),
    );
  }
}
