import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
          Card(
            child: ListTile(
              title: Text("GetX"),
              subtitle: Text("Getx Dialog Alert"),
              onTap: () {
                Get.defaultDialog(
                  title: "Delete Chat",
                  titlePadding: .all(20),
                  middleText: "Are you sure want to delete this chat??",
                  contentPadding: .all(20),
                  // content:  here we can design the dialoge,
                  confirm: TextButton(
                    onPressed: () {
                      // Navigator.pop(context);
                      Get.back();
                      Get.snackbar("Success", "Chat Deleted");
                    },
                    child: Text("Ok"),
                  ),
                  cancel: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Cancel"),
                  ),
                );
              },
            ),
          ),

          Card(
            child: ListTile(
              title: Text("GetX"),
              subtitle: Text("Getx Bottomsheet"),
              onTap: () {
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(20),
                    ),

                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.light),
                          title: Text("Light Theme"),
                          onTap: () {
                            Get.changeTheme(ThemeData.light());
                            Get.back();
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.dark_mode),
                          title: Text("Dark Theme"),
                          onTap: () {
                            Get.changeTheme(ThemeData.dark());
                            Get.back();
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
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
