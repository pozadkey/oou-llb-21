// ignore_for_file: override_on_non_overriding_member, prefer_const_constructors, annotate_overrides, avoid_unnecessary_containers,

import 'package:flutter/material.dart';
import 'package:legal_achievers/model/students/students_model_16.dart';

import '../pictures/fullscreen/fullscreen.dart';

class StudentDetails16 extends StatelessWidget {
  final Students16 students16;

  StudentDetails16({Key? key, required this.students16}) : super(key: key);

  @override
  final _textfonts = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 14,
      color: Colors.white,
      fontWeight: FontWeight.w500);

  final _headerfonts = TextStyle(
      fontStyle: FontStyle.normal, fontSize: 20, fontWeight: FontWeight.w700);

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: SafeArea(
            child: AppBar(
              elevation: 0,
              centerTitle: true,
              title: Text(students16.name, style: _headerfonts),
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
                                  FullScreen(photos: students16.image),
                            ));
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          students16.image,
                          height: 250,
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.green[500],
                  shadowColor: Colors.grey[700],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0)),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name: ${students16.name}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.green[200],
                          height: 30,
                        ),
                        Text(
                          'Nickname: ${students16.nickname}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.green[200],
                          height: 30,
                        ),
                        Text(
                          'D.O.B: ${students16.dob}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.green[200],
                          height: 30,
                        ),
                        Text(
                          'State of origin: ${students16.state_of_origin}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.green[200],
                          height: 30,
                        ),
                        Text(
                          'Mobile Number: ${students16.mobile_number}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.green[200],
                          height: 30,
                        ),
                        Text(
                          'Email: ${students16.email}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.green[200],
                          height: 30,
                        ),
                        Text(
                          'LinkedIn: ${students16.linkedIn}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.green[200],
                          height: 30,
                        ),
                        Text(
                          'Instagram: ${students16.instagram}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.green[200],
                          height: 30,
                        ),
                        Text(
                          'Facebook: ${students16.facebook}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.green[200],
                          height: 30,
                        ),
                        Text(
                          'Twitter: ${students16.twitter}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.green[200],
                          height: 30,
                        ),
                        Text(
                          'Position Held: ${students16.position_held}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.green[200],
                          height: 30,
                        ),
                        Text(
                          'Skills: ${students16.skills}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.green[200],
                          height: 30,
                        ),
                        Text(
                          'Hobbies: ${students16.hobbies}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.green[200],
                          height: 30,
                        ),
                        Text(
                          'Favourite Course: ${students16.favorite_course}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.green[200],
                          height: 30,
                        ),
                        Text(
                          'Class Crush: ${students16.class_crush}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.green[200],
                          height: 30,
                        ),
                        Text(
                          'Parting words: ${students16.parting_words}',
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
