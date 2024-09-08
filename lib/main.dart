import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_statemanagment/home_screen.dart';
import 'package:getx_statemanagment/localization/localization.dart';
import 'package:getx_statemanagment/screen_localization.dart';
import 'package:getx_statemanagment/screen_one.dart';
import 'package:getx_statemanagment/screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // to use the getx utilities we have to use getMaterialapp instead of Materialapp
    // beacuse getMaterialapp provide all the widgets that material app provides

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Languages(),
      // locale comes first then fallback
      locale: Locale('en','US'),

      // fallbackLocale mean by default
      fallbackLocale: Locale('en','US'),

      home:const ScreenLocalization(),
      // now in getPages we define all routes of app
      // getPages: [
      //   GetPage(name: '/', page: ()=>HomeScreen()),
      //   GetPage(name: '/ScreenOne', page: ()=>ScreenOne()),
      //   GetPage(name: '/ScreenTwo', page: ()=>ScreenTwo()),
      //
      // ],
    );
  }
}
