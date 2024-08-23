import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app_flutter/utils/bg_cont.dart';

import '../services/auth_services.dart';
import '../utils/custom_text_field.dart';
import '../utils/login_cont.dart';
import '../utils/reuse_log_button.dart';

class OtpPage extends StatelessWidget {
 TextEditingController otpController;

 OtpPage({super.key, required this.otpController});

  @override
  Widget build(BuildContext context) {
    final AuthServices _authServices = AuthServices();
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
                Expanded(
                  child: Container(
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
                        CustomTextField(
                          prefixIcon: Icon(Icons.mail_outline, color: Theme.of(context).colorScheme.primary),
                          controller: otpController,
                          labelText: 'Email',
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.next,
                          hintText: 'Enter your email address',
                          obscureText: false,
                        ),
                        SizedBox(height: 50),
                        ReuseLogButton(content: 'Verify',
                          onTap: () {
                            _authServices.verifyEmail(otpController.toString());
                          },
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
