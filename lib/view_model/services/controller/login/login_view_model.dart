import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/state_manager.dart';
import 'package:learning_getx/models/login/user_model.dart';
import 'package:learning_getx/repository/login_repo/login_repo.dart';
import 'package:learning_getx/resources/routes/routes_name.dart';
import 'package:learning_getx/utils/utils.dart';
import 'package:learning_getx/view_model/services/controller/user_preferences/user_preferences_view_model.dart';

class LoginViewModel extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;

  final _api = LoginRepository();

  RxBool isLoading = false.obs;

  UserPreferences userPreferences = UserPreferences();

  void loginApi() {
    isLoading.value = true;

    Map data = {
      'username': emailController.value.text,
      'password': passwordController.value.text,
    };
    _api
        .loginApi(data)
        .then((value) {
          if (value['message'] == "Invalid credentials") {
            Utils.snackBar("Invalid credentials", "Error");
            isLoading.value = false;
          } else {
            Utils.snackBar("Login Success", "Login");
            isLoading.value = false;
            userPreferences
                .saveUser(UserModel.fromJson(value))
                .then((value) {
                  Get.toNamed(RoutesName.homeScreen);
                })
                .onError((error, stackTrance) {});
          }
        })
        .onError((error, stackTrace) {
          Utils.snackBar(error.toString(), "Error");
          isLoading.value = false;
        });
  }
}
