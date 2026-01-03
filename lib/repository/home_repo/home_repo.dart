import 'package:learning_getx/data/network/network_api_services.dart';
import 'package:learning_getx/models/home/user_lisr_model.dart';
import 'package:learning_getx/resources/app_url.dart/app_urls.dart';

class HomeRepo {
  final _apiServices = NetworkApiServices();

  Future<User> userListApi() async {
    dynamic response = await _apiServices.getApi(AppUrls.userListApi);

    return User.fromJson(response);
  }
}
