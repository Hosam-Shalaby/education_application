// ignore_for_file: camel_case_types, unused_import

import 'package:education/constant.dart';
import 'package:education/view/widgets/practice/choose_category.dart';
import 'package:education/view/widgets/practice/questions.dart';
import 'package:education/view/widgets/schedule/schedule_day.dart';
import 'package:flutter/material.dart';

class practicePage extends StatelessWidget {
  const practicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Kmaincolor,
        title: const Text('بنك الاسئلة'),
        centerTitle: true,
      ),
      body: Column(
        // padding: const EdgeInsets.all(5),
        children: [
          const Padding(
            padding: EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'اختر المادة',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                chooseCategory(
                  text: ' اللغة العربية',
                ),
                chooseCategory(
                  text: ' اللغة الانجيليزية',
                ),
                chooseCategory(
                  text: ' الفيزياء ',
                ),
                chooseCategory(
                  text: ' الكيمياء ',
                ),
                chooseCategory(
                  text: ' الرياضيات ',
                ),
                chooseCategory(
                  text: ' التاريخ ',
                ),
                chooseCategory(
                  text: ' الجغرفيا ',
                ),
                chooseCategory(
                  text: ' الاحياء ',
                ),
                chooseCategory(
                  text: ' الالماني ',
                ),
                chooseCategory(
                  text: ' الفرنساوي ',
                ),
                chooseCategory(
                  text: ' الاحصاء ',
                ),
                chooseCategory(
                  text: ' الفلسفة ',
                ),
                chooseCategory(
                  text: ' اللغة العربية',
                ),
              ],
            ),
          ),
          const Text(
            'أشهر الاسئلة',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.right,
          ),
          SizedBox(
            height: 530,
            child: ListView(
              children: const [
                questions(
                  askText: 'ما هي الدولة صاحبة اكبر مساحة في العالم ؟',
                  ansText: 'أ- فرنسا \nب- مصر \nج- الصين \nد- روسيا',
                ),
                questions(
                  askText: 'ما هي الدولة صاحبة اكبر مساحة في العالم ؟',
                  ansText: 'أ- فرنسا \nب- مصر \nج- الصين \nد- روسيا',
                ),
                questions(
                  askText: 'ما هي الدولة صاحبة اكبر مساحة في العالم ؟',
                  ansText: 'أ- فرنسا \nب- مصر \nج- الصين \nد- روسيا',
                ),
                questions(
                  askText: 'ما هي الدولة صاحبة اكبر مساحة في العالم ؟',
                  ansText: 'أ- فرنسا \nب- مصر \nج- الصين \nد- روسيا',
                ),
                questions(
                  askText: 'ما هي الدولة صاحبة اكبر مساحة في العالم ؟',
                  ansText: 'أ- فرنسا \nب- مصر \nج- الصين \nد- روسيا',
                ),
                questions(
                  askText: 'ما هي الدولة صاحبة اكبر مساحة في العالم ؟',
                  ansText: 'أ- فرنسا \nب- مصر \nج- الصين \nد- روسيا',
                ),
                questions(
                  askText: 'ما هي الدولة صاحبة اكبر مساحة في العالم ؟',
                  ansText: 'أ- فرنسا \nب- مصر \nج- الصين \nد- روسيا',
                ),
                questions(
                  askText: 'ما هي الدولة صاحبة اكبر مساحة في العالم ؟',
                  ansText: 'أ- فرنسا \nب- مصر \nج- الصين \nد- روسيا',
                ),
                questions(
                  askText: 'ما هي الدولة صاحبة اكبر مساحة في العالم ؟',
                  ansText: 'أ- فرنسا \nب- مصر \nج- الصين \nد- روسيا',
                ),
                questions(
                  askText: 'ما هي الدولة صاحبة اكبر مساحة في العالم ؟',
                  ansText: 'أ- فرنسا \nب- مصر \nج- الصين \nد- روسيا',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
