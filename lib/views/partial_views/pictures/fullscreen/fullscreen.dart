// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class FullScreen extends StatelessWidget {
  final String photos;
  FullScreen({Key? key, required this.photos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SafeArea(
          child: AppBar(
            elevation: 0,
          ),
        ),
      ),
      body: PhotoView(
        imageProvider: AssetImage(photos),
        backgroundDecoration: BoxDecoration(color: Colors.transparent),
      ),
    );
  }
}
