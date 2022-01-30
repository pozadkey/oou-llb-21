// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:legal_achievers/model/articles_models/poem_model.dart';

class PoemDetails extends StatelessWidget {
  final Poem poem;
  const PoemDetails({Key? key, required this.poem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _textfonts = TextStyle(
        fontStyle: FontStyle.normal, fontSize: 14, fontWeight: FontWeight.w500);

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
            child: Text(poem.title, style: _headerfonts),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(15, 10, 15, 30),
          child: Text(
            poem.content,
            style: _textfonts,
          ),
        ),
      ),
    );
  }
}
