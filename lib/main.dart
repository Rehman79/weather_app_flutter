import 'package:flutter/material.dart';
import 'package:weather_app_flutter/views/Home_page.dart';
import 'package:weather_app_flutter/views/Login_page.dart';
import 'package:weather_app_flutter/views/initial_page.dart';
import 'package:weather_app_flutter/views/registration_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: register(),
    routes: {
      '/initial':(context)=>initial(),
      '/login': (context) => login(),
      '/registration': (context) => register(),
      '/homepage': (context) => homepage(),
    },
  ));
}