import 'package:flutter/material.dart';
import 'package:real_estate/modules/desktop_screen.dart';
import 'package:real_estate/modules/home_screen.dart';
import 'package:real_estate/modules/mobile.dart';

import 'package:real_estate/shared/styles/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Real Estate',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kDarkColor,
        primaryColor: kBgColor,
        textTheme: TextTheme(
          bodyText1: TextStyle(
            color: kBodyTextColor,
            fontSize: 12.0,
          ),
          bodyText2: TextStyle(
            color: kBodyTextColor,
            fontSize: 12.0,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (BuildContext context) {
          print(MediaQuery.of(context).size.width);

          if (MediaQuery.of(context).size.width >= 970) return HomeScreen();
          if (MediaQuery.of(context).size.width <= 500)
            return MobileScreen();
          else
            return DeskScreen();
        },
      ),
    );
  }
}
