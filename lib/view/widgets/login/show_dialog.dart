import 'package:education/constant.dart';
import 'package:education/view/widgets/custom%20widget/custom_button.dart';
import 'package:education/view/widgets/custom%20widget/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

Future<dynamic> forgotPassword(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Kmaincolor,
          content: const Text(
            'تغيير كلمة المرور ',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          actions: [
            CustomTextFormField(
              icon: Icons.person,
              hintText: ' ادخل عنوان البريد او رقم الموبايل ',
              obscureText: false,
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                CustomButton(
                  color: Kmaincolor,
                  height: 50,
                  width: 100,
                  fontsize: 18,
                  text: 'رجوع',
                  onTap: () {
                    navigator?.pop(context);
                  },
                ),
                const Spacer(),
                CustomButton(
                  color: Kmaincolor,
                  height: 50,
                  width: 100,
                  fontsize: 18,
                  text: 'تسجيل',
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return const AlertDialog(
                          content: Text('تم تسجيل حساب جديد بنجاح'),
                        );
                      },
                    );
                  },
                ),
                const Spacer()
              ],
            )
          ],
        );
      });
}
