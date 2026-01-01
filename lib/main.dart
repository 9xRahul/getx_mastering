import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'package:learning_getx/resources/routes/routes.dart';
import 'package:learning_getx/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const SplashScreen(),
      getPages: AppRoutes.appRoutes(),
    );
  }
}
