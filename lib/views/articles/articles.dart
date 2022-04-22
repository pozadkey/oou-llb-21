// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:legal_achievers/views/Articles/Articles_tab.dart';

import 'Articles_mobile.dart';

class Articles extends StatefulWidget {
  const Articles({Key? key}) : super(key: key);

  @override
  State<Articles> createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      if (width <= 480) {
        return ArticlesMobile();
      } else {
        return ArticlesTab();
      }
    });
  }
}
