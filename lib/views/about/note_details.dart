// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:legal_achievers/model/articles_models/note_model.dart';

class NoteDetails extends StatelessWidget {
  final Note note;
  const NoteDetails({Key? key, required this.note}) : super(key: key);

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
        '${note.title} ',
        style: _headerfonts,
      )),
      child: SafeArea(
        child: Scaffold(
          body: CupertinoScrollbar(
            thickness: 2,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 30),
                      child: Text(
                        note.content,
                        style: _textfonts,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
