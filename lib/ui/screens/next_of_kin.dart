import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appewejrfbe/ui/styles/spacing.dart';
import 'package:flutter_appewejrfbe/ui/styles/styles.dart';
import 'package:flutter_appewejrfbe/ui/widgets/custom_button.dart';
import 'package:flutter_appewejrfbe/ui/widgets/custom_text_widget.dart';
import 'package:flutter_appewejrfbe/ui/widgets/custom_textfield1.dart';

class NextOfKin extends StatefulWidget {
  @override
  _NextOfKinState createState() => _NextOfKinState();
}

class _NextOfKinState extends State<NextOfKin> {
  int groupVal = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        children: [
          CustomText('First name',
              topMargin: 20,
              bottomMargin: 10,
              color: Styles.colorGrey,
              fontSize: 14,
              fontWeight: FontWeight.w600),
          CustomTextField1(hintText: 'Type in a first name'),
          CustomText('Last name',
              topMargin: 20,
              bottomMargin: 10,
              color: Styles.colorGrey,
              fontSize: 14,
              fontWeight: FontWeight.w600),
          CustomTextField1(hintText: 'Type in a last name'),
          CustomText('Email Address',
              topMargin: 10,
              bottomMargin: 10,
              color: Styles.colorGrey,
              fontSize: 14,
              fontWeight: FontWeight.w600),
          CustomTextField1(hintText: 'Type in a your email'),
          CustomText('Phone Number',
              topMargin: 20,
              bottomMargin: 10,
              color: Styles.colorGrey,
              fontSize: 14,
              fontWeight: FontWeight.w600),
          CustomTextField1(hintText: 'Type in a your number'),
          CustomText('Sex',
              topMargin: 10,
              bottomMargin: 10,
              color: Styles.colorGrey,
              fontSize: 14,
              fontWeight: FontWeight.w600),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new Radio(
                value: 0,
                groupValue: groupVal,
                activeColor: Styles.appCanvasGreen,
                onChanged: (a) {
                  groupVal = a;
                  setState(() {});
                },
              ),
              CustomText('Male',
                  topMargin: 10,
                  bottomMargin: 10,
                  color: Styles.colorGrey,
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
              Radio(
                value: 1,
                groupValue: groupVal,
                activeColor: Styles.appCanvasGreen,
                onChanged: (a) {
                  groupVal = a;
                  setState(() {});
                },
              ),
              CustomText('Female',
                  topMargin: 10,
                  bottomMargin: 10,
                  color: Styles.colorGrey,
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            ],
          ),
          CustomText('Relationship',
              topMargin: 10,
              bottomMargin: 10,
              color: Styles.colorGrey,
              fontSize: 14,
              fontWeight: FontWeight.w600),
          CustomTextField1(hintText: 'Select relationship', enabled: false),
          verticalSpaceMedium,
          CustomButton(title: 'Save Changes')
        ],
      ),
    );
  }
}
