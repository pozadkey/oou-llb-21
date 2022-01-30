// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:legal_achievers/model/articles_models/note_model.dart';

class NoteDetails extends StatelessWidget {
  final Note note;
  const NoteDetails({Key? key, required this.note}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _textfonts = TextStyle(
        fontStyle: FontStyle.normal, fontSize: 14, fontWeight: FontWeight.w500);

    final _titleFonts = TextStyle(
        fontStyle: FontStyle.normal, fontSize: 16, fontWeight: FontWeight.w600);

    final _headerfonts = TextStyle(
        fontStyle: FontStyle.normal, fontSize: 18, fontWeight: FontWeight.w700);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Container(
            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
            child: Text(note.title, style: _headerfonts),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 5, 10, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: Text(
                  '${note.title} ',
                  style: _titleFonts,
                ),
              ),
              Divider(
                color: Colors.grey[400],
                height: 30,
              ),
              Text(
                note.content,
                style: _textfonts,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
