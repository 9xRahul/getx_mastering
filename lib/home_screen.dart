import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_getx/login_controller.dart';
import 'package:learning_getx/slider_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: .center,
          children: [
            TextField(
              controller: controller.emailController.value,
              decoration: const InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: controller.passwordController.value,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),
            Obx(() {
              return ElevatedButton(
                onPressed: () {
                  controller.loginApi();
                },
                child: controller.isLoading.value
                    ? CircularProgressIndicator()
                    : const Text('Login'),
              );
            }),
          ],
        ),
      ),
    );
  }
}
