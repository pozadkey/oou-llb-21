// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:legal_achievers/views/navigation/navbar_mobile.dart';
import 'package:legal_achievers/views/navigation/navbar_tab.dart';
import 'themes/themes.dart';
import 'views/students/student_profile.dart';
import 'views/students/student_profile_mobile.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.light);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double width = 480;
    return ValueListenableBuilder<ThemeMode>(
        valueListenable: themeNotifier,
        builder: (_, ThemeMode currentMode, __) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Legal Achievers Yearbook',
              themeMode: ThemeMode.system,
              //themeMode: currentMode,
              theme: MyThemes.lightTheme,
              darkTheme: MyThemes.darkTheme,
              home: LayoutBuilder(
                builder: ((context, constraints) {
                  if (MediaQuery.of(context).size.width <= width) {
                    return NavbarMobile();
                  } else {
                    return NavBarTab();
                  }
                }),
              ),
              routes: <String, WidgetBuilder>{
                'student': (BuildContext context) => StudentProfile(),
              });
        });
  }
}
