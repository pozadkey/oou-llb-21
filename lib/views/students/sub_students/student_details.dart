// ignore_for_file: override_on_non_overriding_member, prefer_const_constructors, annotate_overrides, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:legal_achievers/model/students/students_model.dart';

import '../../gallery/sub_gallery/fullscreen/fullscreen.dart';

class StudentDetails extends StatelessWidget {
  final Students students;

  StudentDetails({Key? key, required this.students}) : super(key: key);

  @override
  final _textfonts = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 14,
      color: Colors.white,
      fontWeight: FontWeight.w500);

  final _headerfonts = TextStyle(
      fontStyle: FontStyle.normal, fontSize: 18, fontWeight: FontWeight.w700);

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: SafeArea(
            child: AppBar(
              elevation: 0,
              centerTitle: true,
              title: Text(students.name, style: _headerfonts),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(5, 0, 5, 10),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  FullScreen(photos: students.image),
                            ));
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          students.image,
                          height: 250,
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.green[500],
                  shadowColor: Colors.grey[300],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0)),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name: ${students.name}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.green[200],
                          height: 30,
                        ),
                        Text(
                          'Nickname: ${students.nickname}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.green[200],
                          height: 30,
                        ),
                        Text(
                          'D.O.B: ${students.dob}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.green[200],
                          height: 30,
                        ),
                        Text(
                          'State of origin: ${students.state_of_origin}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.green[200],
                          height: 30,
                        ),
                        Text(
                          'Mobile Number: ${students.mobile_number}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.green[200],
                          height: 30,
                        ),
                        Text(
                          'Email: ${students.email}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.green[200],
                          height: 30,
                        ),
                        Text(
                          'LinkedIn: ${students.linkedIn}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.green[200],
                          height: 30,
                        ),
                        Text(
                          'Instagram: ${students.instagram}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.green[200],
                          height: 30,
                        ),
                        Text(
                          'Facebook: ${students.facebook}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.green[200],
                          height: 30,
                        ),
                        Text(
                          'Twitter: ${students.twitter}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.green[200],
                          height: 30,
                        ),
                        Text(
                          'Position Held: ${students.position_held}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.green[200],
                          height: 30,
                        ),
                        Text(
                          'Skills: ${students.skills}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.green[200],
                          height: 30,
                        ),
                        Text(
                          'Hobbies: ${students.hobbies}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.green[200],
                          height: 30,
                        ),
                        Text(
                          'Favourite Course: ${students.favorite_course}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.green[200],
                          height: 30,
                        ),
                        Text(
                          'Class Crush: ${students.class_crush}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.green[200],
                          height: 30,
                        ),
                        Text(
                          'Parting words: ${students.parting_words}',
                          style: _textfonts,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
