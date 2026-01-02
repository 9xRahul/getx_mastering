import 'dart:async';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:learning_getx/resources/routes/routes_name.dart';
import 'package:learning_getx/view_model/services/controller/user_preferences/user_preferences_view_model.dart';

class SplashServices {
  UserPreferences userPreferences = UserPreferences();
  void isLogin() {
    userPreferences.getUser().then((value) {
      if (value.accessToken!.isEmpty || value.accessToken == null) {
        Timer(Duration(seconds: 3), () => Get.toNamed(RoutesName.loginScreen));
      } else {
        Timer(Duration(seconds: 3), () => Get.toNamed(RoutesName.homeScreen));
      }
    });
  }
}
