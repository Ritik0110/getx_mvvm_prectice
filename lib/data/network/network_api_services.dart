import 'dart:convert';
import 'dart:io';
import '../app_exceptions.dart';
import 'base_api_service.dart';
import 'package:http/http.dart' as http;

class NetworkApiService extends BaseApiServices {
  @override
  Future<dynamic> getApi(String url) async {
    dynamic data;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 15));
      data = responseData(response);
      return data;
    } on SocketException {
      throw InternetException();
    } on RequestTimeOut {
      throw RequestTimeOut();
    } catch (e) {
      return e.toString();
    }
  }

  @override
  Future postApi(String url, var body) async {
    dynamic data;
    try {
      final response = await http
          .post(Uri.parse(url),
              body: jsonEncode(
                  body)) // if body of api is written in raw form then encoded it otherwise send only body to the api
          .timeout(const Duration(seconds: 15));
      data = responseData(response);
      return data;
    } on SocketException {
      throw InternetException();
    } on RequestTimeOut {
      throw RequestTimeOut();
    } catch (e) {
      return e.toString();
    }
  }
}

dynamic responseData(http.Response response) {
  switch (response.statusCode) {
    case 200:
      return jsonDecode(response.body);

    case 400:
      throw InvalidUrlException();
    default:
      throw FetchDataException(response.statusCode.toString());
  }
}
