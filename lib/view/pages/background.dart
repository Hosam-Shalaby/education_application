// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class backgroundScreen extends StatelessWidget {
  const backgroundScreen({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
    // Container(
    //   decoration: const BoxDecoration(
    //     gradient: LinearGradient(
    //         colors: [Colors.blue, Color.fromARGB(255, 0, 10, 150)],
    //         begin: Alignment.centerLeft,
    //         end: Alignment.centerRight,
    //         stops: [0.0, 1.0],
    //         tileMode: TileMode.clamp),
    //   ),
      child: child,
    );
  }
}
