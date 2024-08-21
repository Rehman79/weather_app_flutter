import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app_flutter/utils/bg_cont.dart';

import '../utils/custom_text_field.dart';
import '../utils/login_cont.dart';
import '../utils/reuse_log_button.dart';

class ForgotpassPage extends StatelessWidget {
  ForgotpassPage({super.key});

  TextEditingController forgotpassController = TextEditingController();

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
                    maincontent: 'Forgot Password', subcontent: 'Enter your Email to reset'),
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
                  child:Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 30),
                    child: Column(
                      children: [
                        CustomTextField(
                          prefixIcon: Icon(Icons.mail_outline, color: Colors.blue),
                          controller: forgotpassController,
                          labelText: 'Email',
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.done,
                          hintText: 'Enter your email address',
                          obscureText: false,
                        ),
                        SizedBox(height: 50),
                        ReuseLogButton(content: 'Continue',
                          onTap: () {},
                          color: Colors.blue,
                          textcolor: Colors.white,
                          fontSize: 25, icon_chk: false,),
                      ],
                    ),
                  ),
                )
              ],
            )
        )
    );
  }
}
