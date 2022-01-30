// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:legal_achievers/model/articles_models/entrepreneur_model.dart';

class EntrepreneurDetails extends StatelessWidget {
  final Entrepreneur entrepreneurs;
  const EntrepreneurDetails({Key? key, required this.entrepreneurs})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _cardFonts = TextStyle(
        fontStyle: FontStyle.normal,
        fontSize: 14,
        color: Colors.white,
        fontWeight: FontWeight.w500);

    final _headerfonts = TextStyle(
        fontStyle: FontStyle.normal, fontSize: 20, fontWeight: FontWeight.w700);

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: SafeArea(
            child: AppBar(
              elevation: 0,
              centerTitle: true,
              title: Text(entrepreneurs.title, style: _headerfonts),
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
          child: Card(
            color: Colors.green[600],
            shadowColor: Colors.grey[300],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0)),
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
              child: ListView(
                children: [
                  Text('Full name: ${entrepreneurs.name}', style: _cardFonts),
                  Divider(
                    color: Colors.green[200],
                    height: 30,
                  ),
                  Text('Brand name: ${entrepreneurs.brand}', style: _cardFonts),
                  Divider(
                    color: Colors.green[200],
                    height: 30,
                  ),
                  Text(
                      'Inspiration for business/brand name:\n${entrepreneurs.inspiration}',
                      style: _cardFonts),
                  Divider(
                    color: Colors.green[200],
                    height: 30,
                  ),
                  Text(
                      'Month and year of take-off:\n${entrepreneurs.startDate}',
                      style: _cardFonts),
                  Divider(
                    color: Colors.green[200],
                    height: 30,
                  ),
                  Text(
                      'Scope of activities (what you do): \n${entrepreneurs.scope}',
                      style: _cardFonts),
                  Divider(
                    color: Colors.green[200],
                    height: 30,
                  ),
                  Text('Future plans: \n${entrepreneurs.plans}',
                      style: _cardFonts),
                  Divider(
                    color: Colors.green[200],
                    height: 30,
                  ),
                  Text(
                      'Highest achievement so far: \n${entrepreneurs.achievements}',
                      style: _cardFonts),
                  Divider(
                    color: Colors.green[200],
                    height: 30,
                  ),
                  Text('What keeps you going: \n${entrepreneurs.motivation}',
                      style: _cardFonts),
                  Divider(
                    color: Colors.green[200],
                    height: 30,
                  ),
                  Text(
                      'Has your brand been registered?: \n${entrepreneurs.registered}',
                      style: _cardFonts),
                  Divider(
                    color: Colors.green[200],
                    height: 30,
                  ),
                  Text('Current news: \n${entrepreneurs.current}',
                      style: _cardFonts),
                ],
              ),
            ),
          ),
        ));
  }
}
