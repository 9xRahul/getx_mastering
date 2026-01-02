import 'package:get/get.dart';
import 'package:learning_getx/models/login/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferences extends GetxController {
  Future<bool> saveUser(UserModel responseModel) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString('token', responseModel.accessToken!);
    return true;
  }

  Future<UserModel> getUser() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    String? token = sp.getString('token');
    return UserModel(accessToken: token ?? "");
  }

  Future<bool> removeUser() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.clear();
    // sp.remove("token");
    return true;
  }
}
