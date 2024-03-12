// ignore_for_file: camel_case_types

import 'package:education/constant.dart';
import 'package:education/view/widgets/schedule/days_of_week.dart';
import 'package:education/view/widgets/schedule/schedule_day.dart';
import 'package:flutter/material.dart';

class shedulePage extends StatelessWidget {
  const shedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Kmaincolor,
        title: const Text(' الجدول الاسبوعي'),
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
                  '  ابريل , 2023',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 75,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                daysOfWeek(
                  day: 'FRI',
                  dayNum: '17',
                ),
                daysOfWeek(
                  day: 'SAT',
                  dayNum: '18',
                ),
                daysOfWeek(
                  day: 'SUN',
                  dayNum: '19',
                ),
                daysOfWeek(
                  day: 'MON',
                  dayNum: '20',
                ),
                daysOfWeek(
                  day: 'TUE',
                  dayNum: '21',
                ),
                daysOfWeek(
                  day: 'WED',
                  dayNum: '22',
                ),
                daysOfWeek(
                  day: 'THU',
                  dayNum: '23',
                ),
              ],
            ),
          ),
          const Text(
            'جدول اليوم',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.right,
          ),
          SizedBox(
            height: 530,
            child: ListView(
              children: const [
                scheduleDay(
                  time: '10.00 - 11.00',
                  action: 'بث مباشر مادة الكيمياء مع الاستاذ احمد',
                ),
                scheduleDay(
                  time: '11.00 - 12.00',
                  action: 'بث مباشر مادة اللغة العربية مع الاستاذ احمد',
                ),
                scheduleDay(
                  time: '12.00 - 01.00',
                  action: 'بث مباشر مادة الفيزياء مع الاستاذ احمد',
                ),
                scheduleDay(
                  time: '01.00 - 02.00',
                  action: 'بث مباشر مادة اللغة الانجيليزية مع الاستاذ احمد',
                ),
                scheduleDay(
                  time: '03.00 - 4.00',
                  action: 'بث مباشر مادة الفيزياء مع الاستاذ احمد',
                ),
                scheduleDay(
                  time: '09.00 - 10.00',
                  action: 'بث مباشر مادة الفيزياء مع الاستاذ احمد',
                ),
                scheduleDay(
                  time: '09.00 - 10.00',
                  action: 'بث مباشر مادة الفيزياء مع الاستاذ احمد',
                ),
                scheduleDay(
                  time: '09.00 - 10.00',
                  action: 'بث مباشر مادة الفيزياء مع الاستاذ احمد',
                ),
                scheduleDay(
                  time: '09.00 - 10.00',
                  action: 'بث مباشر مادة الفيزياء مع الاستاذ احمد',
                ),
                scheduleDay(
                  time: '09.00 - 10.00',
                  action: 'بث مباشر مادة الفيزياء مع الاستاذ احمد',
                ),
                scheduleDay(
                  time: '09.00 - 10.00',
                  action: 'بث مباشر مادة الفيزياء مع الاستاذ احمد',
                ),
                scheduleDay(
                  time: '09.00 - 10.00',
                  action: 'بث مباشر مادة الفيزياء مع الاستاذ احمد',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
