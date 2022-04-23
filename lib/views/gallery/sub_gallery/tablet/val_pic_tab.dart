// ignore_for_file: prefer_const_constructors, unused_local_variable, non_constant_identifier_names, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:legal_achievers/model/gallery_model/val_model.dart';
import 'package:url_launcher/url_launcher.dart';

import '../fullscreen/fullscreen.dart';

class ValPicTab extends StatelessWidget {
  const ValPicTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _buttonfonts = TextStyle(
        fontStyle: FontStyle.normal,
        fontSize: 17,
        color: Colors.white,
        fontWeight: FontWeight.w600);

    final _sub_header_fonts = TextStyle(
        fontStyle: FontStyle.normal,
        fontSize: 17,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.41);

    final _textfonts = TextStyle(
        fontStyle: FontStyle.normal,
        fontSize: 15,
        fontWeight: FontWeight.w400,
        letterSpacing: -0.24);

    final _headerfonts = TextStyle(color: Colors.yellow[700]);

    _launchURLBrowser() async {
      const url =
          'https://drive.google.com/folderview?id=10dc8L13rKiSDYDerCRdkNBaH8TjDsMa4';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    _launchYoutubeVideo() async {
      const url = 'https://www.youtube.com/watch?v=X9_n42sN_Co';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
          heroTag: 'screen7',
          transitionBetweenRoutes: false,
          middle: Text(
            'Valedictory Day',
            style: _headerfonts,
          )),
      child: Scaffold(
        body: CupertinoScrollbar(
          thickness: 2,
          child: SingleChildScrollView(
            primary: false,
            child: Container(
                padding: EdgeInsets.fromLTRB(0, 0, 8, 70),
                child: Column(
                  children: [
                    GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                        itemCount: valList.length,
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        physics: ScrollPhysics(),
                        itemBuilder: (BuildContext ctx, index) {
                          Val groupPics = valList[index];
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
                                      borderRadius:
                                          BorderRadius.circular(10.0)),
                                  margin: EdgeInsets.all(1.5)),
                            ),
                          );
                        }),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
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
                    ),
                    Divider(
                      color: Colors.grey[300],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: Text(
                            '8TH LAW VALEDICTORY SESSION',
                            style: _sub_header_fonts,
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: _launchYoutubeVideo,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        height: 400,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/val/IMG_3040.jpg',
                                ),
                                fit: BoxFit.cover)),
                        child: Center(
                            child: Icon(
                          Icons.play_arrow,
                          size: 60,
                          color: Colors.yellow[700],
                        )),
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
