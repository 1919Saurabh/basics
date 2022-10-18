// extension upperString on String {
//   String firstWordUpperCase() {
//     // ignore: prefer_single_quotes
//     return "${this[0].toUpperCase()}${this[1].toUpperCase()}${this.substring(2)}";
//   }
// }

import 'package:basics/widget/MediaQuery.dart';
import 'package:flutter/material.dart';

extension fontSize on double {
  double get fs {
    double screenWidth = 0,
        screenHeight = 0,
        scaleWidth = 0,
        scaleHeight = 0,
        scaleText = 0;

    // bool minTextAdapt = false;
    // bool splitScreenMode = false;

    const Size screenSize = Size(1200, 2000);
    // if (context != null) {
    screenHeight = MyMediaQuery.screenHeight;
    screenWidth = MyMediaQuery.screenWidth;
    // } else {
    //   screenHeight = screenSize.height;
    //   screenWidth = screenSize.width;
    // }

    // if (splitScreenMode) {
    //   scaleHeight = max(screenHeight, 700) / screenSize.height;
    // } else {
    // scaleHeight = screenHeight / screenSize.height;
    // }

    scaleHeight = screenHeight / screenSize.height;

    scaleWidth = screenWidth / screenSize.width;

    // our app does not has orientation feature
    // if (minTextAdapt) {
    //   scaleText = min(scaleWidth, scaleHeight);
    // } else {
    //   scaleText = scaleWidth;
    // }

    scaleText = scaleWidth;

    print(this * scaleText);
    return this * scaleText;
  }
}
