import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appewejrfbe/ui/styles/styles.dart';
import 'package:flutter_appewejrfbe/ui/widgets/size_calculator.dart';

import 'custom_text_widget.dart';

class HomeItem1 extends StatelessWidget {
  const HomeItem1({Key key, this.text, this.image}) : super(key: key);

  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(10),
      height: screenAwareSize(70, context),
      decoration: BoxDecoration(
          color: Styles.colorWhite,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(spreadRadius: 2, color: Styles.colorGrey.withOpacity(.1), offset: Offset(2, 2)),
          ]),
      child: Row(
        children: <Widget>[
          Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Styles.appCanvasGreen.withOpacity(.1),
                  borderRadius: BorderRadius.circular(15)),
              child: Image.asset(
                'images/$image.png',
                height: screenAwareSize(18, context),
              )),
          CustomText(
            text,
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Styles.colorBlack,
            rightMargin: 10,
            leftMargin: 10,
          ),
          Expanded(child: SizedBox()),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
                border: Border.all(color: Styles.appCanvasGreen),
                borderRadius: BorderRadius.circular(15)),
            child: CustomText(
              'NEW',
              fontSize: 10,
              fontWeight: FontWeight.w600,
              color: Styles.appCanvasGreen,
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 20,
            color: Styles.colorGrey,
          )
        ],
      ),
    );
  }
}
