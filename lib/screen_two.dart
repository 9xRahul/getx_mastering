import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(" Screen two")),

      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.dark_mode),
            title: Text("Go to home screen"),
            onTap: () {
              // Get.back();

              Get.toNamed('/ScreenOne');
            },
          ),
        ],
      ),
    );
  }
}
