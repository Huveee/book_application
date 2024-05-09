import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants {
  Constants._(); //To do the constructor unreachable (Other classes cannot create a instance of this class)

  static const String title = 'MyBookLibrary';

  static _calculateFontSize(dynamic size) {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return ScreenUtil().setSp(size);
    } else {
      return ScreenUtil().setSp(size * 0.8); //0.8
    }
  }

  static TextStyle getTitleTextStyle() {
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: _calculateFontSize(48), //48
    );
  }

  static TextStyle getBookModelTextStyle(int size) {
    return TextStyle(
      color: Colors.white70,
      fontSize: _calculateFontSize(size), //20
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal,
    );
  }

  static TextStyle getTypeChipTextStyle(int size) {
    return TextStyle(
      color: Colors.white,
      fontSize: _calculateFontSize(size * 0.6), //12
      fontStyle: FontStyle.normal,
    );
  }

  static getBookInfoLabelTextStyle(int size) {
    return TextStyle(
        fontSize: _calculateFontSize(size), //20
        fontWeight: FontWeight.bold,
        color: Colors.black);
  }

  static getBookInfoTextStyle(int size) {
    return TextStyle(
        fontSize: _calculateFontSize(size * 0.8), color: Colors.black);
  } //16
}
