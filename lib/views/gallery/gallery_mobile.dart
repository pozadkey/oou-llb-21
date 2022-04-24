// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, non_constant_identifier_names, curly_braces_in_flow_control_structures, avoid_returning_null_for_void, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:legal_achievers/views/gallery/sub_gallery/cultural_pic.dart';
import 'package:legal_achievers/views/gallery/sub_gallery/group_pic.dart';
import 'sub_gallery/dinner_pic.dart';
import 'sub_gallery/jersey_pic.dart';
import 'sub_gallery/outing_pic.dart';
import 'sub_gallery/signout_pic.dart';
import 'sub_gallery/val_pic.dart';

class GalleryMobile extends StatefulWidget {
  const GalleryMobile({Key? key}) : super(key: key);

  @override
  _GalleryMobileState createState() => _GalleryMobileState();
}

class _GalleryMobileState extends State<GalleryMobile> {
  final _sub_header_fonts = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 13,
      fontWeight: FontWeight.w500,
      letterSpacing: -0.08);

  final _headerfonts = TextStyle(color: Colors.yellow[700]);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          CupertinoSliverNavigationBar(
            largeTitle: Text('Gallery', style: _headerfonts),
            automaticallyImplyLeading: false,
          )
        ],
        body: CupertinoScrollbar(
          thickness: 2,
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                        child: Text(
                          'CLASS OF \'21',
                          style: _sub_header_fonts,
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => GroupPic()));
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset('assets/class_21/IMG_2268.JPG'),
                    ),
                  ),
                  Divider(
                    color: Colors.grey[300],
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: Text(
                          'CULTURAL DAY',
                          style: _sub_header_fonts,
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CulturalPic()));
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                          'assets/cultural/IMG-20211215-WA0089.jpg'),
                    ),
                  ),
                  Divider(
                    color: Colors.grey[300],
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: Text(
                          'JERSEY DAY',
                          style: _sub_header_fonts,
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => JerseyPic()));
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        'assets/jersey/IMG-20211220-WA0088.jpg',
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey[300],
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: Text(
                          'SIGN-OUT DAY',
                          style: _sub_header_fonts,
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SignoutPic()));
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        'assets/signout/IMG-20211205-WA0156.jpg',
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey[300],
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: Text(
                          'OUTING DAY',
                          style: _sub_header_fonts,
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => OutingPic()));
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        'assets/outing/IMG-20211213-WA0054.jpg',
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey[300],
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: Text(
                          'DINNER',
                          style: _sub_header_fonts,
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => DinnerPic()));
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child:
                          Image.asset('assets/dinner/IMG-20211220-WA0167.jpg'),
                    ),
                  ),
                  Divider(
                    color: Colors.grey[300],
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                        child: Text(
                          'VALEDICTORY DAY',
                          style: _sub_header_fonts,
                        ),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => ValPic()));
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        'assets/val/IMG-20211220-WA0204.jpg',
                      ),
                    ),
                  ),
                  Divider(
                    color: Colors.grey[300],
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
