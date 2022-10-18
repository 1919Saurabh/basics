import 'package:basics/widget/MediaQuery.dart';
import 'package:flutter/material.dart';

extension fontSize on num {
//   double get sp {
//     double screenWidth = 0,
//         screenHeight = 0,
//         scaleWidth = 0,
//         scaleHeight = 0,
//         scaleText = 0;

//     // bool minTextAdapt = false;
//     // bool splitScreenMode = false;

//     const Size screenSize = Size(1200, 2000);
//     // if (context != null) {
//     screenHeight = MyMediaQuery.screenHeight;
//     screenWidth = MyMediaQuery.screenWidth;
//     // } else {
//     //   screenHeight = screenSize.height;
//     //   screenWidth = screenSize.width;
//     // }

//     // we will furter pass splitScreeMode.
//     // if (splitScreenMode) {
//     //   scaleHeight = max(screenHeight, 700) / screenSize.height;
//     // } else {
//     // scaleHeight = screenHeight / screenSize.height;
//     // }

//     scaleHeight = screenHeight / screenSize.height;

//     scaleWidth = screenWidth / screenSize.width;

//     // our app does not has orientation feature
//     // if (minTextAdapt) {
//     //   scaleText = min(scaleWidth, scaleHeight);
//     // } else {
//     //   scaleText = scaleWidth;
//     // }

//     scaleText = scaleWidth;

//     print(this * scaleText);
//     return this * scaleText;
//   }

  double get sp {
    double screenWidth = 0, scaleWidth = 0, scaleText = 0;
    const Size screenSize = Size(1200, 2000);
    screenWidth = MyMediaQuery.screenWidth;
    scaleWidth = screenWidth / screenSize.width;
    scaleWidth = screenWidth / screenSize.width;
    scaleText = scaleWidth;
    return this * scaleText;
  }
}
