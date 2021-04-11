import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appewejrfbe/ui/styles/styles.dart';
import 'package:flutter_appewejrfbe/ui/widgets/size_calculator.dart';

import 'custom_text_widget.dart';

class Profile1 extends StatelessWidget {
  const Profile1({Key key, this.icon, this.text2, this.isLogout = false})
      : super(key: key);

  final IconData icon;
  final bool isLogout;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        decoration: BoxDecoration(
          color: Color(0xfff8f9fc),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color:isLogout ? Colors.red: Styles.colorGrey,
            ),
            CustomText(
              text2,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color:isLogout ? Colors.red: Styles.colorBlack,
              rightMargin: 10,
              leftMargin: 20,
            ),
            Expanded(child: SizedBox()),
            if (!isLogout)
              Icon(Icons.arrow_forward_ios, color: Styles.colorGrey, size: 20)
          ],
        ));
  }
}
