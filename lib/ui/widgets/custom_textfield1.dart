import 'package:flutter/material.dart';
import 'package:flutter_appewejrfbe/ui/styles/styles.dart';
 import 'package:google_fonts/google_fonts.dart';

class CustomTextField1 extends StatefulWidget {
  const CustomTextField1(
      {Key key,
      this.controller,
      this.enabled = true,
      this.autoFocus = false,
      this.inputType,
      this.inputAction,
      this.focusNode,
      this.maxLength,
      this.maxLines,
      this.labelText,
      this.suffixIcon,
      this.validator,
      this.onChanged,
      this.hintText, this.prefixIcon})
      : super(key: key);
  final TextEditingController controller;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final FocusNode focusNode;
  final int maxLength;
  final int maxLines;
  final bool enabled;
  final bool autoFocus;
  final String labelText;
  final String hintText;
  final Icon prefixIcon;
  final Widget suffixIcon;
  final String Function(String) validator;
  final Function(String) onChanged;

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField1> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.inputType,
      controller: widget.controller,
      textInputAction: widget.inputAction,
      maxLength: widget.maxLength,
      autofocus: widget.autoFocus,
      enabled: widget.enabled,
      maxLines: widget.maxLines,
      cursorColor: Colors.grey,
      style: GoogleFonts.nunito(
          color: Styles.colorBlack, fontWeight: FontWeight.w600, fontSize: 16),
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        labelText: widget.labelText,
        fillColor: Styles.colorWhite,
        filled: true,
        prefixIcon: widget.prefixIcon ,
        hintStyle: GoogleFonts.nunito(
            color: Styles.colorGrey, fontWeight: FontWeight.w600, fontSize: 16),
        hintText: widget.hintText,
        labelStyle: GoogleFonts.nunito(
            color: Styles.colorGrey, fontWeight: FontWeight.w600, fontSize: 16),
        errorStyle: const TextStyle(color: Color(0xff222222)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Styles.colorGrey.withOpacity(.5), width: 1),
            borderRadius: BorderRadius.circular(8)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide:
              BorderSide(color: Styles.colorGrey.withOpacity(.5), width: 1),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        counterText: '',
      ),
      validator: widget.validator,
    );
  }
}
