import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String content;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final bool logText;

  CustomText({
    required this.content,
    this.fontSize = 24.0,
    this.fontWeight = FontWeight.normal,
    this.color = Colors.blue,
    this.logText=false,
  });

  @override
  Widget build(BuildContext context) {
    return logText
        ? Text(
            content,
            style: TextStyle(
              color: color,
              fontWeight: fontWeight,
              fontSize: fontSize,
              fontFamily: 'GM',
              shadows: [
                Shadow(
                  offset: Offset(2.0, 2.0),
                  blurRadius: 3.0,
                  color: Colors.black.withOpacity(0.5),
                ),
              ],
            ),
          )
        : Text(
            content,
            style: TextStyle(
              color: color,
              fontWeight: fontWeight,
              fontSize: fontSize,
              fontFamily: 'GM',
            ),
          );
  }
}
