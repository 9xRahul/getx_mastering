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
      body: ListView.builder(
        itemCount: controller.fruitList.length,
        itemBuilder: (context, index) {
          return Obx(() {
            return Card(
              child: ListTile(
                onTap: () {
                  controller.addToFav(index);
                },
                title: Text(controller.fruitList[index]),
                trailing: Icon(
                  !controller.tempFavList.contains(controller.fruitList[index])
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color: Colors.red,
                ),
              ),
            );
          });
        },
      ),
    );
  }
}
