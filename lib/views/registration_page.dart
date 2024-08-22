import 'package:flutter/material.dart';
import 'package:weather_app_flutter/services/auth_services.dart';
import 'package:weather_app_flutter/utils/bg_cont.dart';
import 'package:weather_app_flutter/utils/custom_text.dart';
import 'package:weather_app_flutter/utils/custom_text_field.dart';
import 'package:weather_app_flutter/utils/fade_navigation.dart';
import 'package:weather_app_flutter/utils/login_cont.dart';
import 'package:weather_app_flutter/utils/reuse_log_button.dart';
import 'package:weather_app_flutter/views/login_page.dart';

class register extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confrmpasswordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final AuthServices _authServices = AuthServices();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: BgCont(
        child: Column(
          children: [
            LoginCont(maincontent: 'Join Us', subcontent: 'Create a new account'),
            SizedBox(height: height * 0.01),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              height: height * 0.74,
              width: width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextField(
                      prefixIcon: Icon(Icons.person, color: Colors.blue),
                      controller: nameController,
                      labelText: 'Name',
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      hintText: 'Enter your Full name',
                      obscureText: false,
                    ),
                    SizedBox(height: 15),
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
                      textInputAction: TextInputAction.next,
                      hintText: 'Enter your password',
                      obscureText: true,
                    ),
                    SizedBox(height: 15),
                    CustomTextField(
                      prefixIcon: Icon(Icons.key, color: Colors.blue),
                      controller: confrmpasswordController,
                      labelText: 'Confirm Password',
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.done,
                      hintText: 'Confirm your password',
                      obscureText: true,
                    ),
                    SizedBox(height: 20),
                    ReuseLogButton(
                      content: 'Sign up',
                      onTap: () => _authServices.registerUser(
                          context, emailController, passwordController, confrmpasswordController),
                      color: Colors.blue,
                      textcolor: Colors.white,
                      fontSize: 25,
                      icon_chk: false,
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(content: "Already have an account? ", fontSize: 16, color: Colors.grey),
                        GestureDetector(
                          onTap: () => FadeNavigation.navigate(context, login()),
                          child: CustomText(content: 'Login', fontSize: 16),
                        ),
                      ],
                    ),
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
