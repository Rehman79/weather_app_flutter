import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app_flutter/utils/custom_text.dart';

class CustomButton extends StatelessWidget {
  final bool reg;
  final double heightFactor;
  final double widthFactor;
  final VoidCallback onTap;
  CustomButton({
    required this.reg,
    this.heightFactor = 0.07,
    this.widthFactor = 0.8,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final double height = screenSize.height * heightFactor;
    final double width = screenSize.width * widthFactor;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blueAccent),
          color: reg ? Colors.blue[900] : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: CustomText(
            content: reg ? 'Register Now' : 'Sign in',
            color: reg? Colors.white:Colors.blue.shade900,
          ),
        ),
      ),
    );
  }
}
