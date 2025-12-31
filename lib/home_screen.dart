import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_getx/counter_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Getx Mastering")),
      body: Center(
        child: Obx(() {
          return Text(controller.counter.toString());
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.incrementCounter();
        },
      ),
    );
  }
}
