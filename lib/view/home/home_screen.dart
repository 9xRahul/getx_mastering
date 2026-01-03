import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:learning_getx/data/app_sceptions.dart';
import 'package:learning_getx/data/status.dart';
import 'package:learning_getx/resources/routes/routes_name.dart';
import 'package:learning_getx/utils/internetException.dart';
import 'package:learning_getx/view_model/services/controller/home/home_view_model.dart';
import 'package:learning_getx/view_model/services/controller/user_preferences/user_preferences_view_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final homeViewModel = Get.put(HomeViewModel());
  UserPreferences userPreferences = UserPreferences();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeViewModel.userListApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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

      body: Obx(() {
        switch (homeViewModel.rxRequestStatus.value) {
          case Status.LOADING:
            return Center(child: CircularProgressIndicator());

          case Status.COMPLETED:
            return ListView.builder(
              itemCount: homeViewModel.userList.value.users!.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        homeViewModel.userList.value.users![index].image!,
                      ),
                    ),
                    title: Text(
                      "${homeViewModel.userList.value.users![index].firstName} ${homeViewModel.userList.value.users![index].lastName}",
                    ),
                    subtitle: Text(
                      "${homeViewModel.userList.value.users![index].email}",
                    ),
                  ),
                );
              },
            );

          case Status.ERROR:
            if (homeViewModel.error.value == "No internet") {
              return InternetExceptionWidget(
                onRetry: () {
                  homeViewModel.userListApi();
                },
              );
            } else {
              return Center(child: Text(homeViewModel.error.value));
            }
        }
      }),
    );
  }
}
