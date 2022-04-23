// ignore_for_file: prefer_const_constructors, unused_local_variable, non_constant_identifier_names, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:legal_achievers/model/gallery_model/cultural_model.dart';
import 'package:url_launcher/url_launcher.dart';

import 'fullscreen/fullscreen.dart';

class CulturalPic extends StatelessWidget {
  const CulturalPic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _buttonfonts = TextStyle(
        fontStyle: FontStyle.normal,
        fontSize: 17,
        color: Colors.white,
        fontWeight: FontWeight.w600);

    final _textfonts = TextStyle(
        fontStyle: FontStyle.normal,
        fontSize: 15,
        fontWeight: FontWeight.w400,
        letterSpacing: -0.24);

    final _headerfonts = TextStyle(color: Colors.yellow[700]);

    _launchURLBrowser() async {
      const url =
          'https://drive.google.com/folderview?id=1H5FaB7LghuvDfLnrCuZhPE1TzdpuyH3e';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
          middle: Text(
        'Cultural Day',
        style: _headerfonts,
      )),
      child: Scaffold(
        body: CupertinoScrollbar(
          thickness: 2,
          child: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: Column(
                  children: [
                    GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                        itemCount: culturalList.length,
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemBuilder: (BuildContext ctx, index) {
                          Cultural groupPics = culturalList[index];
                          return SizedBox(
                            height: 200,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => FullScreen(
                                          photos: groupPics.image,
                                        )));
                              },
                              child: Card(
                                  child: Image.asset(
                                    groupPics.image,
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
  }
}
