// main.dart
// demo of flutter otg connection to pico
// you must use otg cable to connect to android phone to pico
// tested with waveshare rp2040 zero and pixel 4 phone
//
// to create flutter app:
//
//    flutter create otg3 --empty
//       cd otg3
//       flutter pub add usb_serial
//       flutter pub add get
//
//    while still in the otg3/lib directory
//    mkdir controllers
//    mkdir screens
//    copy main.dart to otg3/lib
//    copy home.dart to otg3/lib/screens
//    copy otgcontrollers.dart to otg3/lib/controllers
//    flutter run
//
//  todo make it 2 way, send data from pico to pixel 4
//  and update the screen

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import './screens/home.dart';

void main(){runApp(const MyApp());}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key:key);
  
  @override Widget build(BuildContext context){
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'main',
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: const Home());}}
