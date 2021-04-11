import 'package:flutter/material.dart';

double screenAwareSize(double value, BuildContext context,
    {bool width = false}) {
  if (width) {
    return MediaQuery.of(context).size.width * (value / 414);
  } else {
    return MediaQuery.of(context).size.height * (value / 896);
  }
}
