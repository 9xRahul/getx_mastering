import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_getx/slider_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final SliderController controller = Get.put(SliderController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Getx Mastering")),
      body: Center(
        child: Column(
          children: [
            Obx(() {
              return Container(
                height: 100,
                width: 100,
                color: Colors.teal.withOpacity(controller.opacity.value),
              );
            }),

            Obx(() {
              return Slider(
                value: controller.opacity.value,
                onChanged: (value) {
                  controller.sliderValue(value);
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
