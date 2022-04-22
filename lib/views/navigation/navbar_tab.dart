// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:legal_achievers/views/about/about_mobile.dart';
import 'package:legal_achievers/views/about/about_tab.dart';
import 'package:legal_achievers/views/articles/articles_mobile.dart';
import 'package:legal_achievers/views/articles/articles_tab.dart';
import 'package:legal_achievers/views/student_view/student_profile.dart';

import '../gallery.dart';

class NavBarTab extends StatefulWidget {
  const NavBarTab({Key? key}) : super(key: key);

  @override
  State<NavBarTab> createState() => _NavBarTabState();
}

class _NavBarTabState extends State<NavBarTab> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
            child: NavigationRail(
              selectedIconTheme:
                  IconThemeData(color: Colors.yellow[700], size: 25),
              selectedLabelTextStyle: TextStyle(
                color: Colors.yellow[700],
              ),
              unselectedLabelTextStyle: TextStyle(
                color: Colors.grey[500],
              ),
              labelType: NavigationRailLabelType.all,
              unselectedIconTheme:
                  IconThemeData(color: Colors.grey[500], size: 25),
              selectedIndex: index,
              onDestinationSelected: (index) => setState(() {
                this.index = index;
              }),
              destinations: [
                NavigationRailDestination(
                  icon: Icon(Icons.home_rounded),
                  label: Text('Home'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.image_rounded),
                  label: Text('Gallery'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.article_rounded),
                  label: Text('Articles'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.info_outlined),
                  label: Text('About'),
                ),
              ],
            ),
          ),
          VerticalDivider(
            color: Colors.grey[300],
          ),
          Expanded(child: _tabPages())
        ],
      ),
    );
  }

  Widget _tabPages() {
    switch (index) {
      case 0:
        return StudentProfile();
      case 1:
        return Gallery();
      case 2:
        return ArticlesTab();
      case 3:
        return AboutTab();
      default:
        return StudentProfile();
    }
  }
}
