import 'package:flutter/material.dart';

class MyMediaQuery {
  static void init({
    required context,
  }) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    myContext = context;
    minTextAdapt = true;
    splitScreenMode = true;
  }

  static late double screenHeight;
  static late double screenWidth;
  static BuildContext? myContext;
  static late bool minTextAdapt;
  static late bool splitScreenMode;
}
