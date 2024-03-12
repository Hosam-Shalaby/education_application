// ignore_for_file: camel_case_types, use_build_context_synchronously, avoid_print

import 'package:education/constant.dart';
import 'package:education/view/pages/Forget%20password/forget_password.dart';
import 'package:education/view/pages/nav%20bar%20and%20home%20page/bot_nav_bar_circle.dart';
import 'package:education/view/pages/login%20and%20registration/create_account_page.dart';
import 'package:education/view/widgets/Dailog%20Box/error.dart';
import 'package:education/view/widgets/Dailog%20Box/loading_dailog.dart';
import 'package:education/view/widgets/custom%20widget/custom_button.dart';
import 'package:education/view/widgets/custom%20widget/custom_text_form_field.dart';
import 'package:education/view/widgets/custom%20widget/custom_text_form_password.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final TextEditingController _emailControllor = TextEditingController();
  final TextEditingController _passwordControllor = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  void _login() async {
    showDialog(
        context: context,
        builder: (_) {
          return const LoadingAlertDailog(message: 'Please wait');
        });
    User? currentUser;
    await _auth
        .signInWithEmailAndPassword(
      email: _emailControllor.text.trim(),
      password: _passwordControllor.text.trim(),
    )
        .then((auth) {
      currentUser = auth.user;
    }).catchError((error) {
      Navigator.pop(context);
      showDialog(
          context: context,
          builder: (context) {
            return ErrorAlertDailog(message: error.message.toString());
          });
    });
    if (currentUser != null) {
      Navigator.pop(context);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const botnavbarCircle(),
        ),
      );
    } else {
      print('error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Stack(children: [
        Image.asset(
          'assets/images/splash2.jpg',
          fit: BoxFit.fill,
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                height: 180.h,
              ),
              CustomTextFormField(
                onChange: (value) {
                  _emailControllor.text = value;
                },
                icon: Icons.person,
                hintText: 'إسم المستخدم',
                obscureText: false,
              ),
              CustomTextFormFieldPassword(
                onChange: (value) {
                  _passwordControllor.text = value;
                },
                hintText: 'كلمة المرور',
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.off(const ForgetPassword());
                        // Navigator.pushReplacement(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => const ForgetPassword(),
                        //   ),
                        // );
                      },
                      child: const Text(
                        'نسيت كلمة السر',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(height: 20.h),
              CustomButton(
                height: 80.h,
                width: 180.w,
                fontsize: 20.sp,
                onTap: () {
                  // Get.off(const botnavbarCircle());
                  _emailControllor.text.isNotEmpty &&
                          _passwordControllor.text.isNotEmpty
                      ? _login()
                      : showDialog(
                          context: context,
                          builder: (context) {
                            return const ErrorAlertDailog(
                                message:
                                    'من فضلك ادخل البريد الالكتروني وكلمة السر');
                          });
                },
                text: 'تسجيل دخول',
                color: Kmaincolor,
              ),
              Divider(height: 20.h),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                GestureDetector(
                  onTap: () {
                    // Get.off(const createAccountPage());
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const createAccountPage(),
                      ),
                    );
                  },
                  child: Text(
                    'إنشاء حساب جديد',
                    style: TextStyle(
                        fontSize: 20.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(
                  ' ليس لديك حساب ؟',
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                )
              ])
            ]))
      ])
    ]));
  }
}
