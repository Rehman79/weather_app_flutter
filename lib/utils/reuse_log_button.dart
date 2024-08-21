import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app_flutter/utils/custom_text.dart';

class ReuseLogButton extends StatelessWidget {
  final String content;
  final double heightFactor;
  final double widthFactor;
  final VoidCallback onTap;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final Color textcolor;
  final bool icon_chk;
  final String? imgpath;
  ReuseLogButton({
    required this.content,
    this.heightFactor = 0.07,
    this.widthFactor = 0.9,
    this.fontSize = 18.0,
    this.fontWeight = FontWeight.normal,
    this.color=Colors.white,
    required this.icon_chk,
    this.imgpath,
    this.textcolor=Colors.black,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final double height = screenSize.height * heightFactor;
    final double width = screenSize.width * widthFactor;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue),
          color:color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: icon_chk?Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imgpath!,height: 25,width: 25,),
            SizedBox(width: width*0.03,),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: CustomText(
                content: content,
                color: textcolor,
                fontSize: fontSize,
              ),
            ),
          ],
        ):Center(
          child: CustomText(
            content: content,
            color: textcolor,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
