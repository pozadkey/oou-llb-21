// ignore_for_file: prefer_const_literals_to_create_immutables, curly_braces_in_flow_control_structures, avoid_returning_null_for_void, prefer_const_constructors, sized_box_for_whitespace, non_constant_identifier_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:legal_achievers/model/articles_models/entrepreneur_model.dart';
import 'package:legal_achievers/model/articles_models/poem_model.dart';
import 'package:legal_achievers/model/articles_models/story_model.dart';
import 'package:legal_achievers/model/students/students_model.dart';
import 'package:legal_achievers/views/partial_views/entrepreneur_details.dart';
import 'about.dart';
import 'gallery.dart';
import 'partial_views/poem_details.dart';
import 'partial_views/story_details.dart';
import 'student_view/student_profile.dart';

class Articles extends StatefulWidget {
  const Articles({Key? key}) : super(key: key);

  @override
  _ArticlesState createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {
  final _textfonts = TextStyle(
      fontStyle: FontStyle.normal, fontSize: 24, fontWeight: FontWeight.w600);

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
      fontStyle: FontStyle.normal, fontSize: 30, fontWeight: FontWeight.w700);

  final _poemFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 35,
      color: Colors.white,
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
              title: Text('Articles', style: _textfonts),
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
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 10),
                    child: Text(
                      'Entrepreneurs\' corner',
                      style: _sub_header_fonts,
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.0),
                    color: Colors.green[500]),
                child: ListView.separated(
                    separatorBuilder: (context, index) => Padding(
                          padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
                          child: Divider(
                            color: Colors.green[200],
                          ),
                        ),
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: entrepreneurList.length,
                    itemBuilder: (context, index) {
                      Entrepreneur entrepreneurs = entrepreneurList[index];
                      return Container(
                        height: 80,
                        child: Center(
                          child: ListTile(
                            title: Text(
                              entrepreneurs.title,
                              style: _cardFonts,
                            ),
                            trailing: Icon(
                              Icons.navigate_next_rounded,
                              color: Colors.white,
                              size: 25,
                            ),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => EntrepreneurDetails(
                                      entrepreneurs: entrepreneurs)));
                            },
                          ),
                        ),
                      );
                    }),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Divider(
                  color: Colors.grey[400],
                  height: 30,
                ),
              ),
              Row(
                children: [
                  Text(
                    'Story Corner',
                    style: _sub_header_fonts,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: ListView.builder(
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: storyList.length,
                    itemBuilder: (context, index) {
                      Story stories = storyList[index];
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
                                stories.title,
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
                                        StoryDetails(story: stories)));
                              },
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Divider(
                  color: Colors.grey[400],
                  height: 30,
                ),
              ),
              Row(
                children: [
                  Text(
                    'Poems',
                    style: _sub_header_fonts,
                  ),
                ],
              ),
              Container(
                  height: 250,
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10),
                      itemCount: poemList.length,
                      itemBuilder: (BuildContext ctx, index) {
                        Poem poems = poemList[index];
                        return Container(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => PoemDetails(
                                        poem: poems,
                                      )));
                            },
                            child: Card(
                              child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Stack(
                                    children: [
                                      Center(
                                        child: Text(
                                          poems.title,
                                          style: _poemFont,
                                        ),
                                      ),
                                      Positioned(
                                        right: 0.0,
                                        bottom: 0.0,
                                        child: Icon(
                                          Icons.navigate_next_rounded,
                                          size: 40,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  )),
                              color: Colors.green[500],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0)),
                            ),
                          ),
                        );
                      })),
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
          currentIndex: 2,
          onTap: (value) {
            if (value == 0)
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => StudentProfile(),
              ));

            if (value == 1)
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Gallery()));
            if (value == 2) return null;
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
