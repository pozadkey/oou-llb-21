// ignore_for_file: unused_local_variable, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:legal_achievers/model/articles_models/story_model.dart';

class StoryDetailsTab extends StatelessWidget {
  final Story story;
  const StoryDetailsTab({Key? key, required this.story}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _textfonts = TextStyle(
        fontStyle: FontStyle.normal,
        fontSize: 15,
        fontWeight: FontWeight.w400,
        letterSpacing: -0.24);

    final _headerfonts = TextStyle(color: Colors.yellow[700]);

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
          middle: Text(
        '${story.title} ',
        style: _headerfonts,
      )),
      child: SafeArea(
          child: Scaffold(
        body: CupertinoScrollbar(
          thickness: 2,
          child: SingleChildScrollView(
            primary: false,
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Text(
                      '- by Jodi Picoult.',
                    ),
                  ),
                  Divider(
                    color: Colors.grey[300],
                  ),
                  Text(
                    story.content,
                    style: _textfonts,
                  ),
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}
