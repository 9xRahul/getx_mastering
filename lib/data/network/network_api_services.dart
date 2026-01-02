import 'dart:convert';
import 'dart:io';
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:learning_getx/data/app_sceptions.dart';
import 'package:learning_getx/data/network/base_api_services.dart';

import 'package:http/http.dart' as http;

class NetworkApiServices extends BaseApiServices {
  @override
  Future<dynamic> postApi(dynamic data, String url) async {
    if (kDebugMode) {
      print(url);
      print(data);
    }
    dynamic reponseJson;
    try {
      final response = await http
          .post(Uri.parse(url), body: data)
          .timeout(Duration(seconds: 3));

      reponseJson = returnResponse(response);
    } on SocketException {
      throw InternetException('');
    } on TimeoutException {
      throw RequestTimeoutException("");
    }

    if (kDebugMode) {
      print(reponseJson);
    }
    return reponseJson;
  }

  @override
  Future<dynamic> getApi(String url) async {
    if (kDebugMode) {
      print(url);
    }
    dynamic reponseJson;
    try {
      final response = await http
          .get(Uri.parse(url))
          .timeout(Duration(seconds: 3));

      reponseJson = returnResponse(response);
    } on SocketException {
      throw InternetException('');
    } on TimeoutException {
      throw RequestTimeoutException("");
    }

    return reponseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;

      case 400:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      default:
        throw FetchDataException(
          'Error occured while communicating with server ${response.statusCode.toString()}',
        );
    }
  }
}
