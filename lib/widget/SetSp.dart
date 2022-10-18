// import 'dart:math';

// import 'package:flutter/material.dart';

// class SetSp {
//   double setSp(
//     double fontSize, {
//     BuildContext? context,
//     bool minTextAdapt = false,
//     bool splitScreenMode = false,
//   }) {
//     double screenWidth = 0,
//         screenHeight = 0,
//         scaleWidth = 0,
//         scaleHeight = 0,
//         scaleText = 0;

//     const Size screenSize = Size(1200, 2000);
//     if (context != null) {
//       screenHeight = MediaQuery.of(context).size.height;
//       screenWidth = MediaQuery.of(context).size.width;
//     } else {
//       screenHeight = screenSize.height;
//       screenWidth = screenSize.width;
//     }

//     if (splitScreenMode) {
//       scaleHeight = max(screenHeight, 700) / screenSize.height;
//     } else {
//       scaleHeight = screenHeight / screenSize.height;
//     }

//     scaleWidth = screenWidth / screenSize.width;

//     if (minTextAdapt) {
//       scaleText = min(scaleWidth, scaleHeight);
//     } else {
//       scaleText = scaleWidth;
//     }
//     print(fontSize * scaleText);
//     return fontSize * scaleText;
//   }
// }

import 'package:basics/widget/MediaQuery.dart';
import 'package:flutter/material.dart';

class Setsp {
  double fs(double fontSize) {
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

    //
    // if (splitScreenMode) {
    //   scaleHeight = max(screenHeight, 700) / screenSize.height;
    // } else {
    // scaleHeight = screenHeight / screenSize.height;
    // }

    scaleHeight = screenHeight / screenSize.height;

    scaleWidth = screenWidth / screenSize.width;

    // if (minTextAdapt) {
    //   scaleText = min(scaleWidth, scaleHeight);
    // } else {
    //   scaleText = scaleWidth;
    // }

    scaleText = scaleWidth;

    print(fontSize * scaleText);
    return fontSize * scaleText;
  }
}
