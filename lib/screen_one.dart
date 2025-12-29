import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_getx/screen_two.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(" Screen One")),

      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.dark_mode),
            title: Text("Go to  screen two"),
            onTap: () {
              /// Get.back();
              //    Get.to(ScreenTwo());

              Get.toNamed('/ScreenTwo');
            },
          ),
        ],
      ),
    );
  }
}
