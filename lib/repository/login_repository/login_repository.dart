import '../../data/network/network_api_services.dart';

import '../../res/app_urls/app_url.dart';

class LoginRepository{
  NetworkApiService service = NetworkApiService();

  Future<dynamic> loginApi(var data)async{
    final response =await service.postApi(AppUrl.loginCallUrl, data);
    return response;
  }
}