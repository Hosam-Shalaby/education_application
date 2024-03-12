// ignore_for_file: use_build_context_synchronously, unused_element

import 'package:education/view/pages/login%20and%20registration/login_page.dart';
import 'package:education/view/widgets/Dailog%20Box/error.dart';
import 'package:education/view/widgets/custom%20widget/custom_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

final FirebaseAuth _auth = FirebaseAuth.instance;

class _ForgetPasswordState extends State<ForgetPassword> {
  final TextEditingController _forgetPassTextController =
      TextEditingController(text: '');

  void _forgettPassSubmitForm() async {
    try {
      await _auth.sendPasswordResetEmail(email: _forgetPassTextController.text);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const loginPage(),
        ),
      );
    } catch (error) {
      ErrorAlertDailog(message: error.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Stack(
          children: [
            Image.asset(
              'assets/images/splash2.jpg',
              fit: BoxFit.fill,
            ),
            Column(
              children: [
                const SizedBox(height: 180),
                const Center(
                    child: Text(
                  'نسيت كلمة المرور',
                  style: TextStyle(
                      fontSize: 40,
                      fontFamily: 'cairo',
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
                const SizedBox(height: 30),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text('البريد الالكتروني',
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'cairo',
                          color: Colors.white)),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                    style: const TextStyle(color: Colors.white),
                    controller: _forgetPassTextController,
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.black38,
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white))),
                  ),
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: CustomButton(
                    height: 50,
                    fontsize: 18,
                    onTap: () {
                      _forgettPassSubmitForm();
                    },
                    text: 'إعـادة ضبـط',
                  ),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: CustomButton(
                    height: 50,
                    fontsize: 18,
                    onTap: () {
                      Get.off(const loginPage());
                    },
                    text: ' رجـوع',
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    ));
  }
}
