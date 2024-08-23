import 'package:flutter/material.dart';
import 'package:weather_app_flutter/services/auth_services.dart';
import 'package:weather_app_flutter/utils/bg_cont.dart';
import 'package:weather_app_flutter/utils/custom_text.dart';
import 'package:weather_app_flutter/utils/custom_text_field.dart';
import 'package:weather_app_flutter/utils/fade_navigation.dart';
import 'package:weather_app_flutter/utils/login_cont.dart';
import 'package:weather_app_flutter/utils/reuse_log_button.dart';
import 'package:weather_app_flutter/views/registration_page.dart';

class login extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final AuthServices _authServices = AuthServices();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: BgCont(
        child: Column(
          children: [
            LoginCont(
              maincontent: 'Welcome',
              subcontent: 'Sign in to continue',
            ),
            SizedBox(height: height * 0.02),
            SingleChildScrollView(
              child: Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(width * 0.05),
                      topRight: Radius.circular(width * 0.05), // Responsive border radius
                    ),
                  ),
                  height: height * 0.75,
                  width: width,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: width * 0.05, // Responsive horizontal padding
                      vertical: height * 0.04, // Responsive vertical padding
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CustomTextField(
                          prefixIcon: Icon(Icons.mail_outline, color: Theme.of(context).colorScheme.primary),
                          controller: emailController,
                          labelText: 'Email',
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          hintText: 'Enter your email address',
                          obscureText: false,
                        ),
                        SizedBox(height: height * 0.02), // Responsive spacing
                        CustomTextField(
                          prefixIcon: Icon(Icons.key, color: Theme.of(context).colorScheme.primary),
                          controller: passwordController,
                          labelText: 'Password',
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.done,
                          hintText: 'Enter your password',
                          obscureText: true,
                        ),
                        SizedBox(height: height * 0.03), // Responsive spacing
                        GestureDetector(
                          onTap: () {
                            // Handle forgot password action here
                          },
                          child: CustomText(
                            content: 'Forgot Password?',
                            fontSize: width * 0.04, // Responsive font size
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                        ),
                        SizedBox(height: height * 0.03), // Responsive spacing
                        ReuseLogButton(
                          content: 'Login',
                          onTap: () => _authServices.loginUser(context, emailController, passwordController),
                          color: Theme.of(context).colorScheme.primary,
                          textcolor: Theme.of(context).colorScheme.onPrimary,
                          fontSize: width * 0.06, // Responsive font size
                          icon_chk: false,
                        ),
                        SizedBox(height: height * 0.04), // Responsive spacing
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Divider(color: Colors.grey, thickness: 1.0),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: width * 0.02), // Responsive padding
                              child: CustomText(
                                content: 'Or Login with',
                                fontSize: width * 0.035, // Responsive font size
                                color: Theme.of(context).colorScheme.onBackground,
                              ),
                            ),
                            Expanded(
                              child: Divider(color: Colors.grey, thickness: 1.0),
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.04), // Responsive spacing
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ReuseLogButton(
                              content: 'Google',
                              onTap: () {
                                _authServices.loginWithGoogle(context);
                              },
                              widthFactor: 0.8,
                              heightFactor: 0.06,
                              icon_chk: true,
                              imgpath: 'lib/Assets/images/Google.png',
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.04), // Responsive spacing
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              content: "Don't have an account? ",
                              fontSize: width * 0.04, // Responsive font size
                              color: Colors.grey,
                            ),
                            GestureDetector(
                              onTap: () {
                                FadeNavigation.navigate(context, register());
                              },
                              child: CustomText(
                                content: 'Register',
                                fontSize: width * 0.04, // Responsive font size
                                color: Theme.of(context).colorScheme.primary,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
