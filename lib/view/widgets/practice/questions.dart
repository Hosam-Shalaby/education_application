// ignore_for_file: camel_case_types

import 'package:education/constant.dart';
import 'package:flutter/material.dart';

class questions extends StatelessWidget {
  const questions({super.key, required this.askText, required this.ansText});
  final String askText;
  final String ansText;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: KSecondaryColor,
      ),
      child: Column(
        children: [
          Text(
            askText, 
            // 'ما هي الدولة صاحبة اكبر مساحة في العالم ؟',
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
          Text(
            ansText,
          ),
         
          const Row(
            children: [
              Text(
                'التعليقات',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
