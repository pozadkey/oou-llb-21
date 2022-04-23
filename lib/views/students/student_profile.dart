// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_returning_null_for_void

import 'package:flutter/material.dart';
import 'package:legal_achievers/model/students/students_model.dart';
import 'package:legal_achievers/views/gallery/gallery_mobile.dart';

import '../about/about_mobile.dart';
import '../articles/articles_mobile.dart';
import 'sub_students/student_details.dart';

class StudentProfile extends StatefulWidget {
  const StudentProfile({Key? key}) : super(key: key);

  @override
  _StudentProfileState createState() => _StudentProfileState();
}

class _StudentProfileState extends State<StudentProfile> {
  final _textfonts = TextStyle(
      fontStyle: FontStyle.normal, fontSize: 24, fontWeight: FontWeight.w600);

  final _cardFonts = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 14,
      color: Colors.white,
      fontWeight: FontWeight.w500);

  final _bottomNavFonts =
      TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.w500);

  final _buttonfonts = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 14,
      color: Colors.grey[500],
      fontWeight: FontWeight.w600);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
            child: AppBar(
              automaticallyImplyLeading: false,
              elevation: 0,
              title: Text('Students', style: _textfonts),
              centerTitle: true,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          ListView.builder(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              itemCount: studentList.length,
              addAutomaticKeepAlives: false,
              addRepaintBoundaries: false,
              itemBuilder: (context, index) {
                Students students = studentList[index];
                studentList.sort((a, b) => a.name.compareTo(b.name));
                return Container(
                  height: 100,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0)),
                      color: Colors.yellow[700],
                      elevation: 0,
                      child: Center(
                        child: ListTile(
                          title: Text(
                            students.name,
                            style: _cardFonts,
                          ),
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey[200],
                            backgroundImage: AssetImage(
                              students.image,
                            ),
                          ),
                          trailing: Icon(
                            Icons.navigate_next_rounded,
                            color: Colors.white,
                            size: 25,
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => StudentDetails(
                                      students: students,
                                    )));
                          },
                        ),
                      ),
                    ),
                  ),
                );
              }),
          Container(
            padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => StudentProfile()));
                  },
                  child: Row(
                    children: [
                      Text(
                        'Next',
                        style: _buttonfonts,
                      ),
                      Icon(Icons.navigate_next_rounded,
                          color: Colors.yellow[700], size: 30)
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
