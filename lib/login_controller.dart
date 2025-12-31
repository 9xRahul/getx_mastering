import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  RxBool isLoading = false.obs;

  void loginApi() async {
    isLoading.value = true;
    try {
      final response = await http.post(
        Uri.parse('https://dummyjson.com/auth/login'),
        body: {"username": "emilys", "password": "emilyspass"},
      );

      var data = jsonDecode(response.body);
      debugPrint(response.statusCode.toString());
      if (response.statusCode == 200) {
        isLoading.value = false;
        Get.snackbar("Login Success", data['firstName']);
      } else {
        isLoading.value = false;
        Get.snackbar("Login Failed", data['message']);
      }
    } catch (e) {
      isLoading.value = false;
      Get.snackbar("Exception", e.toString());
    }
  }
}
