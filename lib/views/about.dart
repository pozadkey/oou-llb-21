// ignore_for_file: prefer_const_literals_to_create_immutables, unused_field, curly_braces_in_flow_control_structures, avoid_returning_null_for_void, prefer_const_constructors, non_constant_identifier_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:legal_achievers/model/articles_models/note_model.dart';

import 'articles.dart';
import 'gallery.dart';
import 'partial_views/note_details.dart';
import 'student_view/student_profile.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  final _textfonts = TextStyle(
      fontStyle: FontStyle.normal, fontSize: 14, fontWeight: FontWeight.w500);

  final _cardFonts = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 14,
      color: Colors.white,
      fontWeight: FontWeight.w500);

  final _sub_header_fonts = TextStyle(
      fontStyle: FontStyle.normal, fontSize: 16, fontWeight: FontWeight.w600);

  final _bottomNavFonts =
      TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.w500);

  final _headerfonts = TextStyle(
      fontStyle: FontStyle.normal, fontSize: 24, fontWeight: FontWeight.w600);

  final _poemFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 35,
      color: Colors.white,
      fontWeight: FontWeight.w600);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
            child: AppBar(
              automaticallyImplyLeading: false,
              elevation: 0,
              title: Text('About', style: _headerfonts),
              centerTitle: true,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Text(
                      'Legal Achievers',
                      style: _sub_header_fonts,
                    ),
                  ),
                ],
              ),
              Text(
                  'The trail blazers set of the 2020/2021 session with a total of one hundred and ninety nine (199) finalists who have taken strides through every look and cranny of the Olabisi Onabanjo University their Alma mater till the climax of their Legum Baccalaureus Journey.\n5years, 10 Semesters, 64 courses 215Units.\nThe Trail Blazers. Watimagbo!!!',
                  style: _textfonts),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: Divider(
                  color: Colors.grey[400],
                  height: 30,
                ),
              ),
              Row(
                children: [
                  Text(
                    'Farewell Messages',
                    style: _sub_header_fonts,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: ListView.builder(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: noteList.length,
                    itemBuilder: (context, index) {
                      Note notes = noteList[index];
                      return Container(
                        height: 80,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0)),
                          color: Colors.yellow[700],
                          elevation: 0,
                          child: Center(
                            child: ListTile(
                              title: Text(
                                notes.title,
                                style: _cardFonts,
                              ),
                              trailing: Icon(
                                Icons.navigate_next_rounded,
                                color: Colors.white,
                                size: 25,
                              ),
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        NoteDetails(note: notes)));
                              },
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
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
          currentIndex: 3,
          onTap: (value) {
            if (value == 0)
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => StudentProfile()));
            if (value == 1)
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Gallery()));
            if (value == 2)
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Articles()));
            if (value == 3) return null;
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
