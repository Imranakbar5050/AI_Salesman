import 'package:flutter/material.dart';

class apptextstyle extends StatelessWidget {
  String title;
  TextOverflow? overflow;
  Color? color;
  double? fontSize;
  FontWeight? fontWeight;
  String? fontFamily;
  TextAlign? textAlign;

  apptextstyle({
    Key? key,
    required this.title,
    this.overflow,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.fontFamily,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          decoration: null,
          overflow: overflow,
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontFamily: fontFamily),
      textAlign: textAlign,
    );
  }
}
