import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app_flutter/views/profile_page.dart';

import 'home_page.dart';
import 'location_page.dart';
import 'notifications_page.dart';

class BnbTemplatePage extends StatefulWidget {
  @override
  _BnbTemplatePageState createState() => _BnbTemplatePageState();
}

class _BnbTemplatePageState extends State<BnbTemplatePage> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  final List<Widget> _screens = [
    HomePage(),
    LocationPage(),
    NotificationsPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_page], // Display the current screen based on the selected index
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        items: <Widget>[
          Icon(Icons.home_outlined, size: 30,color: Colors.white,),
          Icon(Icons.location_on_outlined, size: 30,color: Colors.white,),
          Icon(Icons.notifications_none_outlined, size: 30,color: Colors.white,),
          Icon(Icons.person_outline, size: 30,color: Colors.white,),
        ],
        color: Colors.blue,
        buttonBackgroundColor: Colors.blue,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
    );
  }
}