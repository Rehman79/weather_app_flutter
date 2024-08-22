import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app_flutter/utils/bg_cont.dart';
import 'package:weather_app_flutter/utils/custom_text.dart';

import '../utils/custom_text_field.dart';

class LocationPage extends StatelessWidget {
   LocationPage({super.key});
   TextEditingController searchController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BgCont(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 70),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(content: 'Around Your Country',fontWeight: FontWeight.w700,),
                SizedBox(height: 30,),
                CustomTextField(
                  prefixIcon: Icon(Icons.search, color: Colors.blue),
                  controller: searchController,
                  labelText: 'City',
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.done,
                  hintText: 'Search for a city',
                  obscureText: false,
                ),
                //list of shapeitem
              ],
            ),
          )
      ),
    );
  }
}
