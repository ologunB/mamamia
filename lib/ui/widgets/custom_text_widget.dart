import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'size_calculator.dart';

class CustomText extends StatelessWidget {
  const CustomText(this.text,
      {Key key,
      this.fontSize,
      this.fontWeight,
      this.centerText = false,
      this.color,
      this.leftMargin = 0.0,
      this.topMargin = 0.0,
      this.rightMargin = 0.0,
      this.bottomMargin = 0.0,
      this.letterSpacing,
      this.fontFamily})
      : super(key: key);
  final String text;
  final String fontFamily;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final double leftMargin;
  final double letterSpacing;
  final double topMargin;
  final double rightMargin;
  final double bottomMargin;
  final bool centerText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.fromLTRB(leftMargin, topMargin, rightMargin, bottomMargin),
      child: Text(
        text,
        textAlign: centerText ? TextAlign.center : null,
        style: GoogleFonts.montserrat(
            letterSpacing: letterSpacing,
            fontSize: screenAwareSize(fontSize, context, width: true),
            fontWeight: fontWeight,
            color: color),
      ),
    );
  }
}
