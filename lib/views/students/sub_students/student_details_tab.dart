// ignore_for_file: override_on_non_overriding_member, prefer_const_constructors, annotate_overrides, avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:legal_achievers/model/students/students_model.dart';

import '../../gallery/sub_gallery/fullscreen/fullscreen.dart';

class StudentDetailsTab extends StatelessWidget {
  final Students students;

  StudentDetailsTab({Key? key, required this.students}) : super(key: key);

  @override
  final _textfonts = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 15,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.24);

  final _headerfonts = TextStyle(color: Colors.yellow[700]);

  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
          middle: Text(
        '${students.name} ',
        style: _headerfonts,
      )),
      child: SafeArea(
        child: Scaffold(
            body: CupertinoScrollbar(
          thickness: 2,
          child: SingleChildScrollView(
            primary: false,
            child: Container(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 40),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
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
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Divider(
                          color: Colors.grey[300],
                          height: 30,
                        ),
                        Text(
                          'Name:\n${students.name}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.grey[300],
                          height: 30,
                        ),
                        Text(
                          'Nickname:\n${students.nickname}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.grey[300],
                          height: 30,
                        ),
                        Text(
                          'D.O.B:\n${students.dob}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.grey[300],
                          height: 30,
                        ),
                        Text(
                          'State of origin:\n${students.state_of_origin}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.grey[300],
                          height: 30,
                        ),
                        Text(
                          'Mobile Number:\n${students.mobile_number}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.grey[300],
                          height: 30,
                        ),
                        Text(
                          'Email: ${students.email}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.grey[300],
                          height: 30,
                        ),
                        Text(
                          'LinkedIn:\n${students.linkedIn}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.grey[300],
                          height: 30,
                        ),
                        Text(
                          'Instagram:\n${students.instagram}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.grey[300],
                          height: 30,
                        ),
                        Text(
                          'Facebook:\n${students.facebook}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.grey[300],
                          height: 30,
                        ),
                        Text(
                          'Twitter:\n${students.twitter}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.grey[300],
                          height: 30,
                        ),
                        Text(
                          'Position Held:\n${students.position_held}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.grey[300],
                          height: 30,
                        ),
                        Text(
                          'Skills:\n${students.skills}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.grey[300],
                          height: 30,
                        ),
                        Text(
                          'Hobbies:\n${students.hobbies}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.grey[300],
                          height: 30,
                        ),
                        Text(
                          'Favourite Course:\n${students.favorite_course}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.grey[300],
                          height: 30,
                        ),
                        Text(
                          'Class Crush:\n${students.class_crush}',
                          style: _textfonts,
                        ),
                        Divider(
                          color: Colors.grey[300],
                          height: 30,
                        ),
                        Text(
                          'Parting words:\n${students.parting_words}',
                          style: _textfonts,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }
}
