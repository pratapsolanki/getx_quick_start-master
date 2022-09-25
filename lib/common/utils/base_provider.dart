import 'package:get/get.dart';
import 'package:getx_quick_start/common/values/server.dart';

class BaseProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = SERVER_API_URL;

    // request interception
    httpClient.addRequestModifier<void>((request) {
      request.headers['Authorization'] = '12345678';
      return request;
    });

    // Response interception
    httpClient.addResponseModifier((request, response) {
      return response;
    });
  }
}
