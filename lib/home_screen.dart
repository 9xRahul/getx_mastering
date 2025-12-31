import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_getx/slider_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Getx Mastering")),
      body: Center(
        child: Row(
          mainAxisAlignment: .center,
          children: [
            Obx(() {
              return Text(controller.notification.value == true ? "On" : "off");
            }),

            Obx(() {
              return Switch(
                value: controller.notification.value,
                onChanged: (value) {
                  controller.onSwitchChanged(value);
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
