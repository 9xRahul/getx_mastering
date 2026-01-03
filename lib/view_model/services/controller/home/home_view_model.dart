import 'package:flutter/foundation.dart';
import 'package:get/state_manager.dart';
import 'package:learning_getx/data/status.dart';
import 'package:learning_getx/models/home/user_lisr_model.dart';
import 'package:learning_getx/repository/home_repo/home_repo.dart';

class HomeViewModel extends GetxController {
  final _api = HomeRepo();

  final rxRequestStatus = Status.LOADING.obs;
  final userList = User().obs;
  RxString error = "".obs;
  void setRxRequestStatus(Status _value) => rxRequestStatus.value = _value;
  void setUserList(User _value) => userList.value = _value;
  void setError(String _value) => error.value = _value;

  RxBool isLoading = false.obs;

  void userListApi() async {
    setRxRequestStatus(Status.LOADING);
    _api
        .userListApi()
        .then((value) {
          setRxRequestStatus(Status.COMPLETED);
          setUserList(value);
        })
        .onError((error, stackTrace) {
          if (kDebugMode) {
            print(error);
          }
          setError(error.toString());
          setRxRequestStatus(Status.ERROR);
          isLoading.value = false;
        });
  }
}
