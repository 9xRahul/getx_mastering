import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:learning_getx/home_screen.dart';
import 'package:learning_getx/languages.dart';
import 'package:learning_getx/screen_one.dart';
import 'package:learning_getx/screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      translations: Languages(),
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const HomeScreen(),
      // getPages: [
      //   GetPage(name: '/', page: () => HomeScreen()),

      //   GetPage(name: '/ScreenOne', page: () => ScreenOne()),

      //   GetPage(name: '/ScreenTwo', page: () => ScreenTwo()),
      // ],
    );
  }
}
