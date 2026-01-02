import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:learning_getx/resources/routes/routes_name.dart';
import 'package:learning_getx/view_model/services/controller/user_preferences/user_preferences_view_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  UserPreferences userPreferences = UserPreferences();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              userPreferences.removeUser();
              Get.toNamed(RoutesName.loginScreen);
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),

      body: Center(child: Text("Welcome")),
    );
  }
}
