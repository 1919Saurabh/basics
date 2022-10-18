import 'package:flutter/material.dart';

class MyMediaQuery {
  static void init({
    required context,
  }) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
  }

  static late double screenHeight;
  static late double screenWidth;
}
