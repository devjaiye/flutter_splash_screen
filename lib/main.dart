import 'package:flutter/material.dart';
import 'package:flutter_splash_screen/homepage.dart';
import 'package:flutter_splash_screen/screens/screen_one.dart';
import 'package:flutter_splash_screen/screens/screen_two.dart';
import 'package:flutter_splash_screen/screens/screen_three.dart';


var router = <String, WidgetBuilder>{
  "/screen-2": (BuildContext context) => ScreenTwo(),
  "/screen-3": (BuildContext context) => ScreenThree(),
  "/screen-4": (BuildContext context) => Homepage(),
};

void main() => runApp(MaterialApp(
  title: 'Splash Screen',
  theme: ThemeData(
    primaryColor: new Color(0xff622f74),
    accentColor: Colors.orange,
  ),
  //supportedLocales: [const Locale("en"), const Locale("tr")],
  debugShowCheckedModeBanner: false,
   home: ScreenOne(),
  routes: router,
));
