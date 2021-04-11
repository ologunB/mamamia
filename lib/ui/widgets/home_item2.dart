import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appewejrfbe/ui/styles/spacing.dart';
import 'package:flutter_appewejrfbe/ui/styles/styles.dart';
import 'package:flutter_appewejrfbe/ui/widgets/size_calculator.dart';

import 'custom_text_widget.dart';

class HomeItem2 extends StatelessWidget {
  const HomeItem2({Key key, this.text1, this.text2}) : super(key: key);

  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        margin: EdgeInsets.only(right: 10),
        constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * .8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),border: Border.all(color: Styles.appCanvasGreen)
        ),
        child: Row(
          children: [
            Image.asset(
              'images/resume.png',
              height: screenAwareSize(32, context),
            ),horizontalSpaceSmall,
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text1,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Styles.colorBlack,

                ),
                CustomText(
                  text2,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Styles.colorBlack,

                ),

              ],
            ),  Expanded(child: SizedBox()),  Icon(
              Icons.arrow_forward_ios,
              size: 20,
              color: Styles.colorGrey,
            )
          ],
        ));
  }
}
