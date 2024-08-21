import 'package:flutter/material.dart';
import 'package:weather_app_flutter/views/Forgotpass_page.dart';
import 'package:weather_app_flutter/views/bnb_template_page.dart';
import 'package:weather_app_flutter/views/Login_page.dart';
import 'package:weather_app_flutter/views/Otp_page.dart';
import 'package:weather_app_flutter/views/home_page.dart';
import 'package:weather_app_flutter/views/initial_page.dart';
import 'package:weather_app_flutter/views/registration_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BnbTemplatePage(),
    routes: {
      '/initial':(context)=>initial(),
      '/login': (context) => login(),
      '/registration': (context) => register(),
      '/homepage': (context) => HomePage(),
    },
  ));
}