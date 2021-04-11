import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appewejrfbe/ui/styles/styles.dart';
import 'package:flutter_appewejrfbe/ui/widgets/size_calculator.dart';

import 'custom_text_widget.dart';

class Profile2 extends StatefulWidget {
  Profile2({Key key, this.text2, this.enabled = false}) : super(key: key);

  bool enabled;
  final String text2;

  @override
  _Profile2State createState() => _Profile2State();
}

class _Profile2State extends State<Profile2> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: Color(0xfff8f9fc),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            CustomText(
              widget.text2,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Styles.colorBlack,
              rightMargin: 10,
              leftMargin: 10,
            ),
            Expanded(child: SizedBox()),
            Switch.adaptive(
                inactiveTrackColor: Styles.appCanvasGreen,
                value: widget.enabled,
                activeColor: Styles.appCanvasGreen,
                onChanged: (bool a) {
                  widget.enabled = !widget.enabled;
                  setState(() {});
                })
          ],
        ));
  }
}
