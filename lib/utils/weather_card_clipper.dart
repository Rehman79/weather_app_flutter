// import 'package:flutter/cupertino.dart';
//
// class WeatherCardClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     Path path = Path();
//     double curveHeight = size.height * 0.2;
//
//     //path.lineTo(0, size.height - curveHeight);
//     path.quadraticBezierTo(
//         size.width / 2, size.height + curveHeight, size.width, size.height - curveHeight);
//     path.lineTo(size.width, 0);
//     path.close();
//
//     return path;
//   }
//
//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) {
//     return false;
//   }
// }