import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kids_matching_game/screen/end/view/end_screen.dart';
import 'package:kids_matching_game/screen/home/view/home_screen.dart';
import 'package:kids_matching_game/screen/play/view/play_screen.dart';

void main()
{
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'play',
      routes: {
        '/':(p0) => HomeScreen(),
        'play':(p0) => PlayScreen(),
        'end':(p0) => EndScreen(),
      },
    ),
  );
}