// ignore_for_file: camel_case_types, must_be_immutable, body_might_complete_normally_nullable

import 'package:flutter/material.dart';

class CustomTextFormFieldPassword extends StatefulWidget {
  CustomTextFormFieldPassword({
    super.key,
    this.hintText,
    this.onChange,
  });
  String? hintText;
  // bool? obscureText;
  Function(String)? onChange;
  // IconData icon;

  @override
  State<CustomTextFormFieldPassword> createState() =>
      _CustomTextFormFieldPasswordState();
}

bool obscureText = false;

class _CustomTextFormFieldPasswordState
    extends State<CustomTextFormFieldPassword> {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
        onChanged: widget.onChange,
        textAlign: TextAlign.start,
        obscureText: !obscureText,
        decoration: InputDecoration(
            prefixIcon: const Icon(
              Icons.lock,
              color: Colors.white,
            ),
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  obscureText = !obscureText;
                });
              },
              child: Icon(
                obscureText ? Icons.visibility : Icons.visibility_off,
                color: Colors.white,
              ),
            ),
            hintText: widget.hintText,
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
    );
  }
}
