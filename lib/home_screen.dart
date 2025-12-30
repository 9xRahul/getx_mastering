import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_getx/screen_one.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Getx Mastering")),

      body: Column(
        mainAxisAlignment: .center,
        crossAxisAlignment: .center,
        children: [
          ListTile(title: Text('message'.tr), subtitle: Text("name".tr)),

          Row(
            children: [
              TextButton(
                onPressed: () {
                  Get.updateLocale(Locale('en', 'US'));
                },
                child: Text("English"),
              ),
              TextButton(
                onPressed: () {
                  Get.updateLocale(Locale('hi', 'IN'));
                },
                child: Text("Hindi"),
              ),
              TextButton(
                onPressed: () {
                  Get.updateLocale(Locale('ml', 'IN'));
                },
                child: Text("Malayalam"),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            "GetX",
            "Your have taken the first step",
            isDismissible: true,
          );
        },
      ),
    );
  }
}
