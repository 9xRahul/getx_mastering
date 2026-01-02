import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:learning_getx/resources/assests/image_assets.dart';

import 'package:learning_getx/utils/utils.dart';
import 'package:learning_getx/view_model/services/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices splashScreenServices = SplashServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashScreenServices.isLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(child: Text("welcome".tr, textAlign: TextAlign.center)),
    );
  }
}
