// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:legal_achievers/views/Gallery/Gallery_tab.dart';
import 'package:legal_achievers/views/gallery/Gallery_mobile.dart';

class Gallery extends StatefulWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      if (width <= 480) {
        return GalleryMobile();
      } else {
        return GalleryTab();
      }
    });
  }
}
