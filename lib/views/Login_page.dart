import 'package:flutter/material.dart';
import 'package:weather_app_flutter/utils/bg_cont.dart';
import 'package:weather_app_flutter/utils/custom_text.dart';
import 'package:weather_app_flutter/utils/custom_text_field.dart';
import 'package:weather_app_flutter/utils/fade_navigation.dart';
import 'package:weather_app_flutter/utils/login_cont.dart';
import 'package:weather_app_flutter/utils/reuse_log_button.dart';
import 'package:weather_app_flutter/views/registration_page.dart';

class login extends StatelessWidget {
  login({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

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
                maincontent: 'Welcome', subcontent: 'Sign in to continue'),
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
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CustomTextField(
                      prefixIcon: Icon(Icons.mail_outline, color: Colors.blue),
                      controller: emailController,
                      labelText: 'Email',
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      hintText: 'Enter your email address',
                      obscureText: false,
                    ),
                    SizedBox(height: 15),
                    CustomTextField(
                      prefixIcon: Icon(Icons.key, color: Colors.blue),
                      controller: passwordController,
                      labelText: 'Password',
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.done,
                      hintText: 'Enter your password',
                      obscureText: true,
                    ),
                    SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {},
                      child: CustomText(
                        content: 'Forgot Password?', fontSize: 16,),
                    ),
                    SizedBox(height: 20),
                    ReuseLogButton(content: 'Login',
                      onTap: () {},
                      color: Colors.blue,
                      textcolor: Colors.white,
                      fontSize: 25, icon_chk: false,),
                    SizedBox(height: 30),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Divider(
                            color: Colors.grey,
                            thickness: 1.0,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child:CustomText(content: 'Or Login with',fontSize: 14,color: Colors.black,),
                        ),
                        Expanded(
                          child: Divider(
                            color: Colors.grey,
                            thickness: 1.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReuseLogButton(content: 'Google', onTap: (){},widthFactor: 0.43,heightFactor: 0.06, icon_chk: true,imgpath: 'lib/Assets/images/Google.png'),
                        ReuseLogButton(content: 'Facebook', onTap: (){},widthFactor: 0.43,heightFactor: 0.06,icon_chk: true,imgpath: 'lib/Assets/images/facebook.png',),
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(content: "Don't have an account? ",fontSize: 16,color: Colors.grey,),
                        GestureDetector(
                          onTap: (){
                            FadeNavigation.navigate(context, register());
                          },
                          child: CustomText(content: 'Register',fontSize: 16,),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
