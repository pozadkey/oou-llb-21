// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:legal_achievers/model/articles_models/note_model.dart';

class NoteDetailsTab extends StatefulWidget {
  final Note note;
  const NoteDetailsTab({Key? key, required this.note}) : super(key: key);

  @override
  State<NoteDetailsTab> createState() => _NoteDetailsTabState();
}

class _NoteDetailsTabState extends State<NoteDetailsTab>
    with AutomaticKeepAliveClientMixin<NoteDetailsTab> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    final _textfonts = TextStyle(
        fontStyle: FontStyle.normal,
        fontSize: 15,
        fontWeight: FontWeight.w400,
        letterSpacing: -0.24);

    final _headerfonts = TextStyle(color: Colors.yellow[700]);

    super.build(context);

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
          middle: Text(
        '${widget.note.title} ',
        style: _headerfonts,
      )),
      child: SafeArea(
        child: Scaffold(
          body: CupertinoScrollbar(
            thickness: 2,
            child: SingleChildScrollView(
              primary: false,
              child: Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 10, 0, 30),
                      child: Text(
                        widget.note.content,
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
