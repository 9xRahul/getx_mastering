import 'package:learning_getx/data/network/network_api_services.dart';
import 'package:learning_getx/resources/app_url.dart/app_urls.dart';

class LoginRepository {
  final _apiServices = NetworkApiServices();

  Future<dynamic> loginApi(var data) async {
    dynamic response = _apiServices.postApi(data, AppUrls.loginUrl);

    
    return response;
  }
}
