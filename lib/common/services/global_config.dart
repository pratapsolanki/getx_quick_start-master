import 'dart:io';
import 'package:get/get.dart';

class GlobalConfigService extends GetxService {
  /// release channel
  var channel = "".obs;

  /// whether ios
  var isIOS = false.obs;

  Future<GlobalConfigService> init() async {
    channel.value = "huawei";
    isIOS.value = Platform.isIOS;
    return this;
  }
}
