// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, non_constant_identifier_names, curly_braces_in_flow_control_structures, avoid_returning_null_for_void, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:legal_achievers/views/gallery/sub_gallery/tablet/cultural_pic_tab.dart';
import 'package:legal_achievers/views/gallery/sub_gallery/tablet/dinner_pic_tab.dart';
import 'package:legal_achievers/views/gallery/sub_gallery/tablet/group_pic_tab.dart';
import 'package:legal_achievers/views/gallery/sub_gallery/tablet/jersey_pic_tab.dart';
import 'package:legal_achievers/views/gallery/sub_gallery/tablet/outing_pic_tab.dart';
import 'package:legal_achievers/views/gallery/sub_gallery/tablet/signout_pic_tab.dart';
import 'package:legal_achievers/views/gallery/sub_gallery/tablet/val_pic_tab.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../model/gallery_model/group_model.dart';
import '../about/about_mobile.dart';
import '../articles/articles_mobile.dart';
import 'sub_gallery/fullscreen/fullscreen.dart';

class GalleryTab extends StatefulWidget {
  const GalleryTab({Key? key}) : super(key: key);

  @override
  _GalleryTabState createState() => _GalleryTabState();
}

class _GalleryTabState extends State<GalleryTab> {
 final _sub_header_fonts = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 13,
      fontWeight: FontWeight.w500,
      letterSpacing: -0.08);

  final _headerfonts = TextStyle(color: Colors.yellow[700]);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
                middle: Text(
              'Gallery',
              style: _headerfonts,
            )),
            child: CupertinoScrollbar(
              thickness: 2,
              child: SingleChildScrollView(
                primary: false,
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
                          setState(() {
                            sidePage = GroupPicTab();
                          });
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
                          setState(() {
                            sidePage = CulturalPicTab();
                          });
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
                          setState(() {
                            sidePage = JerseyPicTab();
                          });
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
                          setState(() {
                            sidePage = SignoutPicTab();
                          });
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
                          setState(() {
                            sidePage = OutingPicTab();
                          });
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
                          setState(() {
                            sidePage = DinnerPicTab();
                          });
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                              'assets/dinner/IMG-20211220-WA0167.jpg'),
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
                          setState(() {
                            sidePage = ValPicTab();
                          });
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
        ),
        VerticalDivider(
          color: Colors.grey[300],
        ),
        Flexible(
          fit: FlexFit.tight,
          flex: 2,
          child: Container(
            child: sidePage,
          ),
        ),
      ],
    );
  }

  Widget sidePage = StatefulBuilder(builder: (context, buider) {
    final _buttonfonts = TextStyle(
        fontStyle: FontStyle.normal,
        fontSize: 17,
        color: Colors.white,
        fontWeight: FontWeight.w600);

    final _headerfonts = TextStyle(color: Colors.yellow[700]);

    _launchURLBrowser() async {
      const url =
          'https://drive.google.com/drive/folders/1-Kw8FU9r9vUDuGZMqnH2uAYyevftJcgv';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
          heroTag: 'screen0',
          transitionBetweenRoutes: false,
          middle: Text(
            'Class of \'21',
            style: _headerfonts,
          )),
      child: Scaffold(
        body: CupertinoScrollbar(
          thickness: 2,
          child: SingleChildScrollView(
            primary: false,
            child: Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: Column(
                  children: [
                    GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                        itemCount: groupList.length,
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemBuilder: (BuildContext ctx, index) {
                          Group groupPicTabs = groupList[index];
                          return SizedBox(
                            height: 200,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => FullScreen(
                                          photos: groupPicTabs.image),
                                    ));
                              },
                              child: Card(
                                  child: Image.asset(
                                    groupPicTabs.image,
                                    fit: BoxFit.cover,
                                  ),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  margin: EdgeInsets.all(1.5)),
                            ),
                          );
                        }),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 70),
                      width: MediaQuery.of(context).size.width,
                      child: TextButton(
                        child: Text(
                          'View All',
                          style: _buttonfonts,
                        ),
                        onPressed: () {
                          _launchURLBrowser();
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.yellow[700],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0)),
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        ),
                      ),
                    )
                  ],
                )),
          ),
        ),
      ),
    );
  });
}
