// ignore_for_file: prefer_const_constructors, unused_local_variable, non_constant_identifier_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:legal_achievers/model/gallery_model/group_model.dart';
import 'package:url_launcher/url_launcher.dart';

import 'fullscreen/fullscreen.dart';

class GroupPic extends StatelessWidget {
  const GroupPic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _buttonfonts = TextStyle(
        fontStyle: FontStyle.normal,
        fontSize: 14,
        color: Colors.white,
        fontWeight: FontWeight.w600);

    final _cardFonts = TextStyle(
        fontStyle: FontStyle.normal,
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.w500);

    final _sub_header_fonts = TextStyle(
        fontStyle: FontStyle.normal, fontSize: 20, fontWeight: FontWeight.w600);

    final _bottomNavFonts =
        TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.w500);

    final _headerfonts = TextStyle(
        fontStyle: FontStyle.normal, fontSize: 20, fontWeight: FontWeight.w700);

    final _poemFont = TextStyle(
        fontStyle: FontStyle.normal,
        fontSize: 40,
        color: Colors.white,
        fontWeight: FontWeight.w600);

    _launchURLBrowser() async {
      const url =
          'https://drive.google.com/drive/folders/1-Kw8FU9r9vUDuGZMqnH2uAYyevftJcgv';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SafeArea(
          child: AppBar(
            elevation: 0,
            centerTitle: true,
            title: Text('Class of \'21', style: _headerfonts),
          ),
        ),
      ),
      body: SingleChildScrollView(
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
                      Group groupPics = groupList[index];
                      return SizedBox(
                        height: 200,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      FullScreen(photos: groupPics.image),
                                ));
                          },
                          child: Card(
                              child: Image.asset(
                                groupPics.image,
                                fit: BoxFit.cover,
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              margin: EdgeInsets.all(1.5)),
                        ),
                      );
                    }),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 40),
                  width: MediaQuery.of(context).size.width / 2,
                  child: TextButton(
                    child: Text(
                      'View All',
                      style: _buttonfonts,
                    ),
                    onPressed: () {
                      _launchURLBrowser();
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green[500],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0)),
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
