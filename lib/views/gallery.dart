// ignore_for_file: curly_braces_in_flow_control_structures, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_returning_null_for_void, non_constant_identifier_names, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:legal_achievers/views/partial_views/pictures/cultural_pic.dart';
import 'package:legal_achievers/views/partial_views/pictures/dinner_pic.dart';
import 'package:legal_achievers/views/partial_views/pictures/group_pic.dart';
import 'package:legal_achievers/views/partial_views/pictures/jersey_pic.dart';
import 'package:legal_achievers/views/partial_views/pictures/outing_pic.dart';
import 'package:legal_achievers/views/partial_views/pictures/signout_pic.dart';
import 'package:legal_achievers/views/partial_views/pictures/val_pic.dart';

import 'about.dart';
import 'articles.dart';
import 'student_view/student_profile.dart';

class Gallery extends StatefulWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
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
              title: Text('Gallery', style: _textfonts),
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
                  Text(
                    'Class of \'21',
                    style: _sub_header_fonts,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/class_21/IMG_2268.JPG',
                          ),
                          fit: BoxFit.cover)),
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                      ),
                      itemCount: 1,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext ctx, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => GroupPic()));
                          },
                        );
                      })),
              Divider(
                color: Colors.grey[400],
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    'Cultural Day',
                    style: _sub_header_fonts,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/cultural/IMG-20211215-WA0089.jpg',
                          ),
                          fit: BoxFit.cover)),
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                      ),
                      itemCount: 1,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext ctx, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => CulturalPic()));
                          },
                        );
                      })),
              Divider(
                color: Colors.grey[400],
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    'Jersey Day',
                    style: _sub_header_fonts,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/jersey/IMG-20211220-WA0088.jpg',
                          ),
                          fit: BoxFit.cover)),
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                      ),
                      itemCount: 1,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext ctx, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => JerseyPic()));
                          },
                        );
                      })),
              Divider(
                color: Colors.grey[400],
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    'Sign-out',
                    style: _sub_header_fonts,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/signout/IMG-20211205-WA0156.jpg',
                          ),
                          fit: BoxFit.cover)),
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                      ),
                      itemCount: 1,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext ctx, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SignoutPic()));
                          },
                        );
                      })),
              Divider(
                color: Colors.grey[400],
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    'Outing',
                    style: _sub_header_fonts,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/outing/IMG-20211213-WA0054.jpg',
                          ),
                          fit: BoxFit.cover)),
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                      ),
                      itemCount: 1,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext ctx, index) {
                        return Container(
                          height: 250,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => OutingPic()));
                            },
                          ),
                        );
                      })),
              Divider(
                color: Colors.grey[400],
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    'Dinner',
                    style: _sub_header_fonts,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/dinner/IMG-20211220-WA0490.jpg',
                          ),
                          fit: BoxFit.cover)),
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                      ),
                      itemCount: 1,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext ctx, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => DinnerPic()));
                          },
                        );
                      })),
              Divider(
                color: Colors.grey[400],
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    'Valedictory',
                    style: _sub_header_fonts,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/val/IMG-20211220-WA0204.jpg',
                          ),
                          fit: BoxFit.cover)),
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                      ),
                      itemCount: 1,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext ctx, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ValPic()));
                          },
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
          currentIndex: 1,
          onTap: (value) {
            if (value == 0)
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => StudentProfile()));
            if (value == 1) return null;

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
