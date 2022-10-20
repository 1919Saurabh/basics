import 'dart:math';

import 'package:basics/widget/MediaQuery.dart';
import 'package:flutter/material.dart';

extension fontSize on num {
  static double screenWidth = 0,
      scaleWidth = 0,
      scaleText = 0,
      screenHeight = 0,
      scaleHeight = 0;

  static const Size screenSize = Size(1200, 2000);

  //Adapter font
  double get sp {
    if (MyMediaQuery.myContext != null) {
      screenHeight = MyMediaQuery.screenHeight;
      screenWidth = MyMediaQuery.screenWidth;
    } else {
      screenHeight = screenSize.height;
      screenWidth = screenSize.width;
    }

    if (MyMediaQuery.splitScreenMode) {
      scaleHeight = max(screenHeight, 700) / screenSize.height;
    } else {
      scaleHeight = screenHeight / screenSize.height;
    }

    scaleWidth = screenWidth / screenSize.width;

    if (MyMediaQuery.minTextAdapt) {
      scaleText = min(scaleWidth, scaleHeight);
    } else {
      scaleText = scaleWidth;
    }
    return this * scaleText;
  }

  //Adapted to screen height , under normal circumstances, the height still uses x.w
  double get h {
    if (MyMediaQuery.myContext != null) {
      screenHeight = MyMediaQuery.screenHeight;
    } else {
      screenHeight = screenSize.height;
    }

    if (MyMediaQuery.splitScreenMode) {
      scaleHeight = max(screenHeight, 700) / screenSize.height;
    } else {
      scaleHeight = screenHeight / screenSize.height;
    }
    return this * scaleHeight;
  }

  //Adapted to screen width
  double get w {
    if (MyMediaQuery.myContext != null) {
      screenWidth = MyMediaQuery.screenWidth;
    } else {
      screenWidth = screenSize.width;
    }
    scaleWidth = screenWidth / screenSize.width;
    return this * scaleWidth;
  }

  //Adapt according to the smaller of width or height
  double get r {
    if (MyMediaQuery.myContext != null) {
      screenHeight = MyMediaQuery.screenHeight;
      screenWidth = MyMediaQuery.screenWidth;
    } else {
      screenHeight = screenSize.height;
      screenWidth = screenSize.width;
    }

    if (MyMediaQuery.splitScreenMode) {
      scaleHeight = max(screenHeight, 700) / screenSize.height;
    } else {
      scaleHeight = screenHeight / screenSize.height;
    }

    scaleWidth = screenWidth / screenSize.width;

    print(this);

    return this * min(scaleWidth, scaleHeight);
  }
}
