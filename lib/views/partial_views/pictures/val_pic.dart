// ignore_for_file: prefer_const_constructors, unused_local_variable, non_constant_identifier_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:legal_achievers/model/gallery_model/val_model.dart';
import 'package:legal_achievers/views/partial_views/pictures/fullscreen/fullscreen.dart';
import 'package:url_launcher/url_launcher.dart';

class ValPic extends StatelessWidget {
  const ValPic({Key? key}) : super(key: key);

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
        fontStyle: FontStyle.normal, fontSize: 16, fontWeight: FontWeight.w600);

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

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SafeArea(
          child: AppBar(
            elevation: 0,
            centerTitle: true,
            title: Text('Valedictory', style: _headerfonts),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 40),
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
                                  borderRadius: BorderRadius.circular(10.0)),
                              margin: EdgeInsets.all(1.5)),
                        ),
                      );
                    }),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 20, 10, 5),
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
                ),
                Divider(
                  color: Colors.grey[400],
                  height: 30,
                ),
                Row(
                  children: [
                    Text(
                      '8th Law Valedictory Session',
                      style: _sub_header_fonts,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: _launchYoutubeVideo,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    height: 200,
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
                      color: Colors.white,
                    )),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
