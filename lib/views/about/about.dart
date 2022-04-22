// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:legal_achievers/views/about/about_tab.dart';

import 'about_mobile.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      if (width <= 480) {
        return AboutMobile();
      } else {
        return AboutTab();
      }
    });
  }
}
