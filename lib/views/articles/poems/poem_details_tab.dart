// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:legal_achievers/model/articles_models/poem_model.dart';

class PoemDetailsTab extends StatelessWidget {
  final Poem poem;
  const PoemDetailsTab({Key? key, required this.poem}) : super(key: key);

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
        '${poem.title} ',
        style: _headerfonts,
      )),
      child: SafeArea(
          child: SafeArea(
        child: Scaffold(
          body: CupertinoScrollbar(
            thickness: 2,
            child: SingleChildScrollView(
              primary: false,
              child: Padding(
                padding: EdgeInsets.fromLTRB(15, 10, 15, 30),
                child: Text(
                  poem.content,
                  style: _textfonts,
                ),
              ),
            ),
          ),
        ),
      )),
    );
  }
}
