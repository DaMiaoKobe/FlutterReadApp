import 'package:flutter/material.dart';

class DeviceUtils {
  static double dp2px(BuildContext context, num dp) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    num _pixelRatio = mediaQuery.devicePixelRatio;
    return (dp * _pixelRatio + 0.5);
  }

  static double sp2px(BuildContext context,num spValue){
    MediaQueryData mediaQuery = MediaQuery.of(context);
    num _textScaleFactor = mediaQuery.textScaleFactor;
    return (spValue * _textScaleFactor + 0.5);
  }
}
