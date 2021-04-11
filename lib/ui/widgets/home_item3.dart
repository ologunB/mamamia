import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appewejrfbe/ui/styles/styles.dart';
import 'package:flutter_appewejrfbe/ui/widgets/size_calculator.dart';

import 'custom_text_widget.dart';

class HomeItem3 extends StatelessWidget {
  const HomeItem3({Key key, this.text1, this.text2}) : super(key: key);

  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      decoration: BoxDecoration(
          color: Color(0xfff8f9fc),
          borderRadius: BorderRadius.circular(20),),
      child: Row(children: [
        Image.asset('images/flower1.png', height: screenAwareSize(60, context),),
        Column(crossAxisAlignment: CrossAxisAlignment.start,
         children: [
         CustomText(
           text1,
           fontSize: 16,
           fontWeight: FontWeight.w500,
           color: Styles.colorBlack,
           rightMargin: 10,
           leftMargin: 10,
         ),
         CustomText(
           text2,
           fontSize: 12,
           fontWeight: FontWeight.w400,
           color: Styles.colorBlack,
           rightMargin: 10,
           leftMargin: 10,
         ),
       ],)
      ],)
    );
  }
}
