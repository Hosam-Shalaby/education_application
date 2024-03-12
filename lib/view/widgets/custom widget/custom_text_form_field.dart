// ignore_for_file: camel_case_types, must_be_immutable, body_might_complete_normally_nullable

import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {super.key,
      this.hintText,
      required this.obscureText,
      this.onChange,
      required this.icon});
  String? hintText;
  bool obscureText;
  Function(String)? onChange;
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: TextFormField(
          style: const TextStyle(
            color: Colors.white,
          ),
          validator: (data) {
            if (data!.isEmpty) {
              return 'Try Again';
            }
          },
          onChanged: onChange,
          textAlign: TextAlign.start,
          obscureText: obscureText,
          decoration: InputDecoration(
              prefixIcon: Icon(
                icon,
                color: Colors.white,
              ),
              hintText: hintText,
              hintStyle: const TextStyle(
                fontFamily: 'cairo',
                color: Colors.white,
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white))),
        ),
      ),
    );
  }
}
