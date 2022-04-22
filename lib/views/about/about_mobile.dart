// ignore_for_file: prefer_const_literals_to_create_immutables, unused_field, curly_braces_in_flow_control_structures, avoid_returning_null_for_void, prefer_const_constructors, non_constant_identifier_names, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:legal_achievers/model/articles_models/note_model.dart';

import '../articles/articles_mobile.dart';
import '../gallery.dart';
import 'note_details.dart';
import '../student_view/student_profile.dart';

class AboutMobile extends StatefulWidget {
  const AboutMobile({Key? key}) : super(key: key);

  @override
  _AboutMobileState createState() => _AboutMobileState();
}

class _AboutMobileState extends State<AboutMobile> {
  final _textfonts = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 15,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.24);

  final _sub_header_fonts = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 17,
      fontWeight: FontWeight.w500,
      letterSpacing: -0.41);

  final _header_fonts = TextStyle(color: Colors.yellow[700]);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          CupertinoSliverNavigationBar(
            largeTitle: Text('About', style: _header_fonts),
            automaticallyImplyLeading: false,
          )
        ],
        body: CupertinoScrollbar(
          thickness: 2,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Text(
                        'The trail blazers set of the 2020/2021 session with a total of one hundred and ninety nine (199) finalists who have taken strides through every look and cranny of the Olabisi Onabanjo University their Alma mater till the climax of their Legum Baccalaureus Journey.\n5years, 10 Semesters, 64 courses and 215Units.\nThe Trail Blazers. Watimagbo!!!',
                        style: _textfonts),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 10),
                    child: Divider(
                      color: Colors.grey[400],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Text(
                          'FAREWELL MESSAGES',
                          style: _sub_header_fonts,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.grey[300],
                  ),
                  ListView.separated(
                    padding: EdgeInsets.all(0),
                    separatorBuilder: (BuildContext context, int index) {
                      return Divider(
                        color: Colors.grey[300],
                      );
                    },
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: noteList.length,
                    itemBuilder: (context, index) {
                      Note notes = noteList[index];
                      return Center(
                        child: ListTile(
                          title: Text(
                            notes.title,
                            style: _textfonts,
                          ),
                          trailing: Icon(
                            Icons.navigate_next_rounded,
                            color: Colors.yellow[700],
                            size: 25,
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    NoteDetails(note: notes)));
                          },
                        ),
                      );
                    },
                  ),
                  Divider(
                    color: Colors.grey[300],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
