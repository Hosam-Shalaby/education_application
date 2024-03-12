// ignore_for_file: camel_case_types, use_build_context_synchronously, non_constant_identifier_names, unused_field

import 'package:education/constant.dart';
import 'package:education/view/pages/login%20and%20registration/login_page.dart';
import 'package:education/view/pages/nav%20bar%20and%20home%20page/bot_nav_bar_circle.dart';
import 'package:education/view/widgets/Dailog%20Box/error.dart';
import 'package:education/view/widgets/custom%20widget/custom_button.dart';
import 'package:education/view/widgets/custom%20widget/custom_text_form_field.dart';
import 'package:education/view/widgets/custom%20widget/custom_text_form_password.dart';
import 'package:education/view/widgets/global_var.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:io';

class createAccountPage extends StatefulWidget {
  const createAccountPage({super.key});

  @override
  State<createAccountPage> createState() => _createAccountPageState();
}

class _createAccountPageState extends State<createAccountPage> {
  String userPhotoUrl = '';

  File? _image;

  bool _isloading = false;

  final signUpFormKey = GlobalKey<FormState>();

  final TextEditingController _emailControllor = TextEditingController();

  final TextEditingController _passwordControllor = TextEditingController();

  final TextEditingController _nameControllor = TextEditingController();

  final TextEditingController _phoneControllor = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  void _getFromCamera() async {
    XFile? PickedFile =
        await ImagePicker().pickImage(source: ImageSource.camera);
    _cropImage(PickedFile!.path);
    Navigator.pop(context);
  }

  void _getFromGallery() async {
    XFile? PickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    _cropImage(PickedFile!.path);
    Navigator.pop(context);
  }

  void _cropImage(filePath) async {
    CroppedFile? croppedImage = await ImageCropper()
        .cropImage(sourcePath: filePath, maxHeight: 600, maxWidth: 600);
    if (croppedImage != null) {
      setState(() {
        _image = File(croppedImage.path);
      });
    }
  }

  void _showImageDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('حدد خيارًا للمتابعة'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                onTap: () {
                  _getFromCamera();
                },
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(4),
                      child: Icon(
                        Icons.camera,
                        color: Kmaincolor,
                      ),
                    ),
                    Text(
                      'الكاميرا',
                      style: TextStyle(color: Kmaincolor),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  _getFromGallery();
                },
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(4),
                      child: Icon(
                        Icons.image,
                        color: Kmaincolor,
                      ),
                    ),
                    Text(
                      'المعرض',
                      style: TextStyle(color: Kmaincolor),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void submitFormOnSignUp() async {
    final isValid = signUpFormKey.currentState!.validate();
    if (isValid) {
      if (_image == null) {
        showDialog(
            context: context,
            builder: (context) {
              return const ErrorAlertDailog(
                message: 'Please pick an image',
              );
            });
        return;
      }
      setState(() {
        _isloading = true;
      });
      try {
        _auth.createUserWithEmailAndPassword(
            email: _emailControllor.text.trim().toLowerCase(),
            password: _passwordControllor.text.trim());
        final User? user = _auth.currentUser;
        uid = user!.uid;
        final ref =
            FirebaseStorage.instance.ref().child('userImage').child('$uid.jpg');
        await ref.putFile(_image!);
        userPhotoUrl = await ref.getDownloadURL();
        FirebaseFirestore.instance.collection('users').doc(uid).set({
          'userName': _nameControllor.text.trim(),
          'id': uid,
          'userNumber': _phoneControllor.text.trim(),
          'userEmail': _emailControllor.text.trim(),
          'userImage': userPhotoUrl,
          'time': DateTime.now(),
          'status': 'approved',
        });
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const botnavbarCircle(),
          ),
        );
      } catch (error) {
        setState(() {
          _isloading = false;
        });
        ErrorAlertDailog(
          message: error.toString(),
        );
      }
    }
    setState(() {
      _isloading = false;
    });
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
          padding: const EdgeInsets.all(30),
          child: Center(
            child: Form(
              key: signUpFormKey,
              child: InkWell(
                onTap: () {
                  _showImageDialog();
                },
                child: CircleAvatar(
                  radius: 80,
                  backgroundColor: KSecondaryColor,
                  //  Colors.white24,
                  backgroundImage: _image == null ? null : FileImage(_image!),

                  child: _image == null
                      ? const Icon(
                          Icons.camera_enhance,
                          size: 80,
                          color: Colors.black54,
                        )
                      : null,
                ),
              ),
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              SizedBox(height: 190.h),
              CustomTextFormField(
                onChange: (value) {
                  _nameControllor.text = value;
                },
                icon: Icons.person,
                hintText: 'ألاسم بالكامل',
                obscureText: false,
              ),
              CustomTextFormField(
                onChange: (value) {
                  _emailControllor.text = value;
                },
                icon: Icons.email,
                hintText: ' عنوان البريد  ',
                obscureText: false,
              ),
              CustomTextFormFieldPassword(
                onChange: (value) {
                  _passwordControllor.text = value;
                },
                hintText: 'كلمة المرور',
              ),
              CustomTextFormField(
                onChange: (value) {
                  _phoneControllor.text = value;
                },
                icon: Icons.person,
                hintText: ' رقم الموبايل ',
                obscureText: false,
              ),
              Divider(
                height: 20.h,
              ),
              CustomButton(
                height: 60.h,
                width: 250.w,
                fontsize: 20.sp,
                onTap: () {
                  submitFormOnSignUp();

                  // Get.off(const loginPage());
                  // navigator?.push(
                  //   MaterialPageRoute(
                  //     builder: (context) {
                  //       return const loginPage();
                  //     },
                  //   ),
                  // );
                },
                text: 'تسجيل حساب',
                color: Kmaincolor,
              ),
              Divider(height: 20.h),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                GestureDetector(
                  onTap: () {
                    Get.off(const loginPage());
                  },
                  child: Text(
                    '   تسجيل دخول    ',
                    style: TextStyle(
                        fontSize: 20.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(
                  'لديك حساب بالفعل ؟',
                  style: TextStyle(fontSize: 20.sp, color: Colors.white),
                  textAlign: TextAlign.center,
                )
              ])
            ]))
      ])
    ]));
  }
}
