import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_quick_start/common/routes/app_pages.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Log in"),
      ),
      body: ListTile(
        title: Text("Back to Home"),
        subtitle: Text('Get.offAllNamed(AppRoutes.Home)'),
        onTap: () => Get.offAllNamed(AppRoutes.Home),
      ),
    );
  }
}
