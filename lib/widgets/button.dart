// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SrButton extends StatelessWidget {
  Color? bgColor;
  String? buttonText;
  VoidCallback? callbackFn;
  Color? borderColor;
  double? paddingValue;
  SrButton({
    this.bgColor,
    this.buttonText,
    this.callbackFn,
    this.borderColor,
    this.paddingValue,
  });
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        backgroundColor: MaterialStateProperty.all(bgColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
            side: BorderSide(
              color: borderColor!,
            ),
          ),
        ),
      ),
      onPressed: callbackFn,
      child: Padding(
        padding: EdgeInsets.all(paddingValue!),
        child: Text(
          buttonText!,
          style: TextStyle(
            fontFamily: 'Avalon Regular',
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
