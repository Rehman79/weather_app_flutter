import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'custom_text.dart';

class LoginCont extends StatelessWidget {
  final String maincontent;
  final String subcontent;

  LoginCont({required this.maincontent, required this.subcontent});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height * 0.25,
      width: width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomText(
            content: maincontent,
            fontWeight: FontWeight.w700,
            fontSize: 30,
            color: Colors.white,
            logText: true,
          ),
          SizedBox(height: height * 0.01),
          CustomText(
            content: subcontent,
            color: Colors.white,
            logText: true,
          ),
        ],
      ),
    );
  }
}
