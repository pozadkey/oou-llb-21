// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:legal_achievers/views/about/about_mobile.dart';
import 'package:legal_achievers/views/articles/articles_mobile.dart';
import 'package:legal_achievers/views/gallery/gallery_mobile.dart';

import '../students/student_profile_mobile.dart';

class NavbarMobile extends StatefulWidget {
  const NavbarMobile({Key? key}) : super(key: key);

  @override
  State<NavbarMobile> createState() => _NavbarMobileState();
}

class _NavbarMobileState extends State<NavbarMobile> {
  var _selectedPageIndex;
  late List<Widget> _pages;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _selectedPageIndex = 0;

    _pages = [StudentProfileMobile(), GalleryMobile(), ArticlesMobile(), AboutMobile()];

    _pageController = PageController(initialPage: _selectedPageIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _bottomNavFonts =
        TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.w500);

    return Scaffold(
        body: PageView(
          controller: _pageController,
          physics: NeverScrollableScrollPhysics(),
          children: _pages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.yellow[700],
          unselectedItemColor: Colors.grey[500],
          selectedFontSize: 10,
          unselectedFontSize: 9,
          showUnselectedLabels: true,
          selectedLabelStyle: _bottomNavFonts,
          unselectedLabelStyle: _bottomNavFonts,
          elevation: 3,
          iconSize: 25,
          currentIndex: _selectedPageIndex,
          onTap: (selectedPageIndex) {
            setState(() {
              _selectedPageIndex = selectedPageIndex;
              _pageController.jumpToPage(selectedPageIndex);
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.image_rounded),
              label: 'Gallery',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.article_rounded),
              label: 'Articles',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info_outlined),
              label: 'About',
            ),
          ],
        ));
  }
}
