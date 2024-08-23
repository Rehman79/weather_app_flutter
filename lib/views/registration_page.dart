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
            SizedBox(height: height * 0.02), // Adjusted for better spacing
            SingleChildScrollView(
              child: Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(width * 0.05), // Responsive border radius
                      topRight: Radius.circular(width * 0.05),
                    ),
                  ),
                  height: height * 0.75,
                  width: width,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: width * 0.05, // Responsive horizontal padding
                      vertical: height * 0.04,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomTextField(
                          prefixIcon: Icon(Icons.person, color: Theme.of(context).colorScheme.primary),
                          controller: nameController,
                          labelText: 'Name',
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          hintText: 'Enter your full name',
                          obscureText: false,
                        ),
                        SizedBox(height: height * 0.02), // Responsive spacing
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
                          textInputAction: TextInputAction.next,
                          hintText: 'Enter your password',
                          obscureText: true,
                        ),
                        SizedBox(height: height * 0.02), // Responsive spacing
                        CustomTextField(
                          prefixIcon: Icon(Icons.key, color: Theme.of(context).colorScheme.primary),
                          controller: confrmpasswordController,
                          labelText: 'Confirm Password',
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.done,
                          hintText: 'Confirm your password',
                          obscureText: true,
                        ),
                        SizedBox(height: height * 0.03), // Responsive spacing
                        ReuseLogButton(
                          content: 'Sign Up',
                          onTap: () => _authServices.registerUser(
                              context, emailController, passwordController, confrmpasswordController),
                          color: Theme.of(context).colorScheme.primary,
                          textcolor: Theme.of(context).colorScheme.onPrimary,
                          fontSize: width * 0.06, // Responsive font size
                          icon_chk: false,
                        ),
                        SizedBox(height: height * 0.04), // Responsive spacing
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomText(
                              content: "Already have an account? ",
                              fontSize: width * 0.04, // Responsive font size
                              color: Colors.grey,
                            ),
                            GestureDetector(
                              onTap: () => FadeNavigation.navigate(context, login()),
                              child: CustomText(
                                content: 'Login',
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
