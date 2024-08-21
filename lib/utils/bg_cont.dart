import 'package:flutter/cupertino.dart';

class BgCont extends StatelessWidget {
  Widget child;

  BgCont({required this.child});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('lib/Assets/images/bg_img.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
