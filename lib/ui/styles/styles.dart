import 'dart:ui';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Styles {
  static Color appCanvasYellow = const Color(0xffFFA400);
  static Color appCanvasGreen = const Color(0xff17b958);
  static Color appCanvasGreenDark = const Color(0xff08A045);
  static Color colorWhite = Colors.white;
  static Color colorBlack = const Color(0xff222222);
  static Color colorPurpleLight = const Color(0xff242248);
  static Color colorPurple = const Color(0xff181530);
  static Color darkBlue = const Color(0xff5468FF);
  static Color colorGrey = const Color(0xff797979);
  static Color errorColor = Colors.red;



  void doNothing() {}
}

routeTo(BuildContext context, Widget view, {bool dialog = false}) {
  Navigator.push(
      context,
      Platform.isIOS
          ? CupertinoPageRoute(builder: (context) => view, fullscreenDialog: dialog)
          : MaterialPageRoute(builder: (context) => view, fullscreenDialog: dialog));
}
