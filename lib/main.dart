import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:weather_app_flutter/firebase_options.dart';
import 'package:weather_app_flutter/viewmodels/weather_viewmodel.dart';
import 'package:weather_app_flutter/views/Login_page.dart';
import 'package:weather_app_flutter/views/bnb_template_page.dart';
import 'package:weather_app_flutter/views/home_page.dart';
import 'package:weather_app_flutter/views/initial_page.dart';
import 'package:weather_app_flutter/views/registration_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
      MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => WeatherViewModel()),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: login(),
            routes: {
              '/initial': (context) => Initial(),
              '/login': (context) => login(),
              '/registration': (context) => register(),
              '/homepage': (context) => HomePage(),
              '/bnbtemplate': (context) => BnbTemplatePage(),
            },
          )));
  }