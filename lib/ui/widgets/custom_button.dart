import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appewejrfbe/ui/styles/spacing.dart';
import 'package:flutter_appewejrfbe/ui/styles/styles.dart';
import 'package:flutter_appewejrfbe/ui/widgets/custom_text_widget.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({Key key, this.onPressed, this.busy = false, this.title})
      : super(key: key);
  final Function() onPressed;
  final bool busy;
  final String title;

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.busy ? null : widget.onPressed,
      child: Container(
        width: screenWidth(context),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          boxShadow: const <BoxShadow>[
            BoxShadow(
              blurRadius: 5.0,
              color: Color(0x20000000),
              spreadRadius: 0.0,
              offset: Offset(3.5, 5.0),
            ),
          ],
         color: Styles.appCanvasGreen,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (widget.busy)
              Platform.isIOS
                  ? const CupertinoActivityIndicator(radius: 12)
                  : const CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white))
            else
              CustomText(
                widget.title,
                     color: Styles.colorWhite,
                    fontSize: 14,
                    fontWeight: FontWeight.w600
              ),
          ],
        ),
      ),
    );
  }
}
