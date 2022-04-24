// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'student_profile_mobile.dart';
import 'student_profile_tab.dart';

class StudentProfile extends StatefulWidget {
  const StudentProfile({Key? key}) : super(key: key);

  @override
  State<StudentProfile> createState() => _StudentProfileState();
}

class _StudentProfileState extends State<StudentProfile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      if (width <= 480) {
        return StudentProfileMobile();
      } else {
        return StudentProfileTab();
      }
    });
  }
}
