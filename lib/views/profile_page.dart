import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app_flutter/services/user_service.dart';
import 'package:weather_app_flutter/utils/bg_cont.dart';
import 'package:weather_app_flutter/utils/custom_text.dart';

import '../services/auth_services.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});
  final AuthServices _authServices = AuthServices();
  final UserService _userService=UserService();
  @override
  Widget build(BuildContext context) {

    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      body: BgCont(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 50),
            child: Column(
              children: [
                Container(
                  height: height*0.2,
                  width: width*0.4,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue
                  ),
                  child: Icon(Icons.person_outline,size: 120,),
                ),
                SizedBox(height: height*0.01,),
                Container(
                  height: height * 0.3,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      CustomText(content: '${_userService.getUserName()}'),
                      SizedBox(height: height*0.1,),
                      CustomText(content: '${_userService.getUserEmail()}',fontSize: 20,),
                    ],
                  ),
                ),
            SizedBox(height: height*0.02,),
            ElevatedButton(
              onPressed: () {
                _authServices.signOut();
              },
              child: Text('Logout'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
            ),
              ],
            ),
          )
      ),
    );
  }
}
