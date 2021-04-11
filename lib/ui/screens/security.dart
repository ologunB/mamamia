import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appewejrfbe/ui/styles/spacing.dart';
import 'package:flutter_appewejrfbe/ui/styles/styles.dart';
import 'package:flutter_appewejrfbe/ui/widgets/custom_button.dart';
import 'package:flutter_appewejrfbe/ui/widgets/custom_text_widget.dart';
import 'package:flutter_appewejrfbe/ui/widgets/custom_textfield1.dart';

class SecurityScreen extends StatefulWidget {
  @override
  _SecurityScreenState createState() => _SecurityScreenState();
}

class _SecurityScreenState extends State<SecurityScreen> {
  int groupVal = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        children: [
          CustomText('Verified Information',
              topMargin: 10,
              bottomMargin: 10,
              color: Styles.appCanvasGreen,
              fontSize: 14,
              fontWeight: FontWeight.w600),
          CustomText('Full name',
              topMargin: 20,
              bottomMargin: 10,
              color: Styles.colorGrey,
              fontSize: 14,
              fontWeight: FontWeight.w600),
          CustomTextField1(hintText: 'Type in your name'),
          verticalSpaceSmall,
          CustomText('Email Address',
              topMargin: 10,
              bottomMargin: 10,
              color: Styles.colorGrey,
              fontSize: 14,
              fontWeight: FontWeight.w600),
          CustomTextField1(hintText: 'Type in a your email'),
          verticalSpaceSmall,
          CustomText('Phone Number',
              topMargin: 20,
              bottomMargin: 10,
              color: Styles.colorGrey,
              fontSize: 14,
              fontWeight: FontWeight.w600),
          CustomTextField1(hintText: 'Type in a your number'),
          CustomText('Password',
              topMargin: 30,
              bottomMargin: 10,
              color: Styles.appCanvasGreen,
              fontSize: 14,
              fontWeight: FontWeight.w600),
          verticalSpaceSmall,
          CustomText(
            'Payment PIN',
            topMargin: 10,
            bottomMargin: 10,
            fontSize: 14,
          ),
          verticalSpaceSmall,
          CustomText(
            'Change Password',
            topMargin: 10,
            bottomMargin: 10,
            fontSize: 14,
          ),
        ],
      ),
    );
  }
}
