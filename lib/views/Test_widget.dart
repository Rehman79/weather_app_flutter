// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import '../utils/weather_card_clipper.dart';
//
// class TestWidget extends StatelessWidget {
//   const TestWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         ClipPath(
//           clipper: WeatherCardClipper(),
//           child: Container(
//             width: 250,
//             height: 150,
//             color: Colors.white,
//             padding: EdgeInsets.all(16),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "38°",
//                       style: TextStyle(
//                         fontSize: 40,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.blueAccent,
//                       ),
//                     ),
//                     Text(
//                       "Heavy Rain",
//                       style: TextStyle(
//                         fontSize: 16,
//                         color: Colors.grey,
//                       ),
//                     ),
//                     Spacer(),
//                     Text(
//                       "Rome, Italy",
//                       style: TextStyle(
//                         fontSize: 16,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ],
//                 ),
//                 Spacer(),
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Icon(
//                       Icons.cloud,
//                       size: 50,
//                       color: Colors.blueAccent,
//                     ),
//                     Text(
//                       "20° ~ 29°",
//                       style: TextStyle(
//                         fontSize: 16,
//                         color: Colors.grey,
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
