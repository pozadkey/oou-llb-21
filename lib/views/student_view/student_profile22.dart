// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_returning_null_for_void

import 'package:flutter/material.dart';
import 'package:legal_achievers/views/gallery.dart';
import 'package:legal_achievers/views/student_view/student_profile21.dart';
import 'package:legal_achievers/views/student_view/student_profile23.dart';

import '../../model/students/students_model_21.dart';
import '../../model/students/students_model_22.dart';
import '../about.dart';
import '../articles.dart';
import '../partial_views/student_details/student_details22.dart';

class StudentProfile22 extends StatefulWidget {
  const StudentProfile22({Key? key}) : super(key: key);

  @override
  _StudentProfile22State createState() => _StudentProfile22State();
}

class _StudentProfile22State extends State<StudentProfile22> {
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
              itemCount: studentList22.length,
              itemBuilder: (context, index) {
                Students22 students22 = studentList22[index];
                studentList21.sort((a, b) => a.name.compareTo(b.name));
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
                            students22.name,
                            style: _cardFonts,
                          ),
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey[200],
                            backgroundImage: AssetImage(
                              students22.image,
                            ),
                          ),
                          trailing: Icon(
                            Icons.navigate_next_rounded,
                            color: Colors.white,
                            size: 25,
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => StudentDetails22(
                                      students22: students22,
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => StudentProfile21()));
                  },
                  child: Row(
                    children: [
                      Icon(Icons.navigate_before_rounded,
                          color: Colors.yellow[700], size: 30),
                      Text(
                        'Previous',
                        style: _buttonfonts,
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => StudentProfile23()));
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
      bottomNavigationBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.yellow[700],
          unselectedItemColor: Colors.grey[500],
          selectedFontSize: 10,
          unselectedFontSize: 9,
          showUnselectedLabels: true,
          selectedLabelStyle: _bottomNavFonts,
          unselectedLabelStyle: _bottomNavFonts,
          elevation: 3,
          iconSize: 25,
          currentIndex: 0,
          onTap: (value) {
            if (value == 0) return null;
            if (value == 1)
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Gallery()));
            if (value == 2)
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Articles()));
            if (value == 3)
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => About()));
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.image_rounded),
              label: 'Gallery',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.article_rounded),
              label: 'Articles',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info_outlined),
              label: 'About',
            ),
          ],
        ),
      ),
    );
  }
}
