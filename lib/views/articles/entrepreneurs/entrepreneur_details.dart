// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:legal_achievers/model/articles_models/entrepreneur_model.dart';

class EntrepreneurDetails extends StatelessWidget {
  final Entrepreneur entrepreneurs;
  const EntrepreneurDetails({Key? key, required this.entrepreneurs})
      : super(key: key);

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
        '${entrepreneurs.title} ',
        style: _headerfonts,
      )),
      child: SafeArea(
        child: Scaffold(
          body: CupertinoScrollbar(
            thickness: 2,
            child: Padding(
              padding: EdgeInsets.fromLTRB(15, 10, 15, 30),
              child: ListView(
                children: [
                  Text('Full name: \n${entrepreneurs.name}', style: _textfonts),
                  Divider(
                    color: Colors.grey[300],
                    height: 30,
                  ),
                  Text('Brand name: \n${entrepreneurs.brand}',
                      style: _textfonts),
                  Divider(
                    color: Colors.grey[300],
                    height: 30,
                  ),
                  Text(
                      'Inspiration for business/brand name:\n${entrepreneurs.inspiration}',
                      style: _textfonts),
                  Divider(
                    color: Colors.grey[300],
                    height: 30,
                  ),
                  Text(
                      'Month and year of take-off:\n${entrepreneurs.startDate}',
                      style: _textfonts),
                  Divider(
                    color: Colors.grey[300],
                    height: 30,
                  ),
                  Text(
                      'Scope of activities (what you do): \n${entrepreneurs.scope}',
                      style: _textfonts),
                  Divider(
                    color: Colors.grey[300],
                    height: 30,
                  ),
                  Text('Future plans: \n${entrepreneurs.plans}',
                      style: _textfonts),
                  Divider(
                    color: Colors.grey[300],
                    height: 30,
                  ),
                  Text(
                      'Highest achievement so far: \n${entrepreneurs.achievements}',
                      style: _textfonts),
                  Divider(
                    color: Colors.grey[300],
                    height: 30,
                  ),
                  Text('What keeps you going: \n${entrepreneurs.motivation}',
                      style: _textfonts),
                  Divider(
                    color: Colors.grey[300],
                    height: 30,
                  ),
                  Text(
                      'Has your brand been registered?: \n${entrepreneurs.registered}',
                      style: _textfonts),
                  Divider(
                    color: Colors.grey[300],
                    height: 30,
                  ),
                  Text('Current news: \n${entrepreneurs.current}',
                      style: _textfonts),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
