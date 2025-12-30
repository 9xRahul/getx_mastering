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
        children: [
          Container(
            color: Colors.teal,
            height: Get.height * .1,
            width: Get.width * .5,
            child: Center(child: Text("I will win")),
          ),
          Container(
            color: Colors.green,
            height: Get.height * .1,
            width: Get.width * .5,
            child: Center(child: Text("I will win thats sure")),
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
