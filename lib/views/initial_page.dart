import 'package:flutter/material.dart';
import 'package:weather_app_flutter/utils/bg_cont.dart';
import 'package:weather_app_flutter/utils/custom_button.dart';
import 'package:weather_app_flutter/utils/custom_text.dart';
import 'package:weather_app_flutter/utils/fade_navigation.dart';
import 'package:weather_app_flutter/views/registration_page.dart';

import 'Login_page.dart';

class initial extends StatelessWidget {
  const initial({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: BgCont(child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05, vertical: height * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('lib/Assets/images/sp_bg.png', scale: 1,),
            SizedBox(height: height * 0.17),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  content: 'Prepare to ',
                  fontWeight: FontWeight.bold,
                  fontSize: width * 0.1,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: CustomText(
                    content: 'be amazed',
                    fontWeight: FontWeight.w100,
                    fontSize: width * 0.07,
                  ),
                ),
              ],
            ),
            CustomText(
              content: 'by our weather',
              fontWeight: FontWeight.bold,
              fontSize: width * 0.1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: CustomText(
                    content: "app's ",
                    fontWeight: FontWeight.w100,
                    fontSize: width * 0.07,
                  ),
                ),
                CustomText(
                  content: 'precision',
                  fontWeight: FontWeight.bold,
                  fontSize: width * 0.1,
                ),
              ],
            ),
            SizedBox(height: height * 0.02),
            CustomText(
              content: 'Stay Informed and prepared with accurate',
              fontSize: width * 0.04,
            ),
            CustomText(
              content: 'forecasts at your fingertips.',
              fontSize: width * 0.04,
            ),
            SizedBox(height: height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  reg: true,
                  onTap: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) => register(),
                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
                          const begin = Offset(0.0, 1.0);
                          const end = Offset.zero;
                          const curve = Curves.easeInOut;
                          var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                          var offsetAnimation = animation.drive(tween);
                          return SlideTransition(position: offsetAnimation, child: child);
                        },
                      ),
                    );
                  },
                  heightFactor: 0.07,
                  widthFactor: 0.57,
                ),
                SizedBox(width: width * 0.03),
                CustomButton(
                  reg: false,
                  onTap: () {
                    FadeNavigation.navigate(context, login());
                  },
                  heightFactor: 0.07,
                  widthFactor: 0.3,
                ),
              ],
            ),
          ],
        ),
      ))
    );
  }
}