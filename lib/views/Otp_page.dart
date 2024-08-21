import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app_flutter/utils/bg_cont.dart';

import '../utils/custom_text_field.dart';
import '../utils/login_cont.dart';
import '../utils/reuse_log_button.dart';

class OtpPage extends StatelessWidget {
 OtpPage({super.key});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context)
        .size
        .height;
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
        body: BgCont(
            child: Column(
              children: [
                LoginCont(
                    maincontent: 'OTP Verification', subcontent: 'Check your email for verification code'),
                SizedBox(height: height * 0.01),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))
                  ),
                  height: height * 0.74,
                  width: width,
                  child: Column(
                    children: [
                      //otp box format firebase
                      SizedBox(height: 50),
                      ReuseLogButton(content: 'Verify',
                        onTap: () {},
                        color: Colors.blue,
                        textcolor: Colors.white,
                        fontSize: 25, icon_chk: false,),
                    ],
                  ),
                )
              ],
            )
        )
    );
  }
}
