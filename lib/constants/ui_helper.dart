import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UIHelper {
  UIHelper._();

  static double getAppTitleHeight() {
    //To align the height of the AppTitle widget according to the pixel values of device
    return ScreenUtil().orientation == Orientation.portrait ? 0.20.sh : 0.20.sw;
  }

  static double getImageWidth() {
    //To align the width of the AppTitle widget's image according to the pixel values of device
    return ScreenUtil().orientation == Orientation.portrait ? 0.8.sh : 1.sw;
  }

  static EdgeInsets getDefaultPadding() {
    //In case of usage
    if (ScreenUtil().orientation == Orientation.portrait) {
      return EdgeInsets.all(12.h);
    } else {
      return EdgeInsets.all(8.w);
    }
  }

  static double calculateImageSize() {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return 0.17.sw;
    } else {
      return 0.2.sh;
    }
  }

  static EdgeInsets getIconPadding() {
    //In case of usage
    if (ScreenUtil().orientation == Orientation.portrait) {
      return EdgeInsets.all(6.h);
    } else {
      //Landscape
      return EdgeInsets.all(6.w);
    }
  }
}
