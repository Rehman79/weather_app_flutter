import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app_flutter/utils/bg_cont.dart';
import 'package:weather_app_flutter/utils/custom_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: BgCont(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 40),
              child: Row(
                children: [
                  Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CustomText(content: '25',fontWeight: FontWeight.w700,fontSize: 70,),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 30.0),
                            child: Row(
                              children: [
                                CustomText(content: '°',fontSize: 30,),
                                CustomText(content: 'C',fontSize: 30,),
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_pin,color: Colors.blue,),
                          CustomText(content: 'Location',fontWeight: FontWeight.w700,fontSize: 20,),
                        ],
                      ),
                      CustomText(content: 'Temperature Feels like something',fontSize: 16,),
                      CustomText(content: 'Day,Time',fontSize: 16,),
                      //shape
                      //graph
                      //list of shape
                    ],
                  )
                ],
              ),
            )
        )
    );
  }
}
