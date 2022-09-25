import 'package:flutter/material.dart';

import 'package:get/get.dart';

class DetailView extends StatelessWidget {
  const DetailView({Key? key}) : super(key: key);

  // https://dart.dev/tools/diagnostic-messages#unnecessary_non_null_assertion
  _buildBackListTileRow(Map? val) {
    return val == null || val["id"] == null
        ? Container()
        : ListTile(
            title: Text("pass by value id = " + val["id"].toString()),
            subtitle: Text('Get.back(result: {"success": true}'),
            onTap: () => Get.back(result: {"success": true}),
          );
  }

  @override
  Widget build(BuildContext context) {
    Map? details = Get.arguments;
    Map? parameters = Get.parameters;

    return Scaffold(
      appBar: AppBar(
        title: Text("Details page"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Navigation - Back"),
            subtitle: Text('Get.back()'),
            onTap: () => Get.back(),
          ),
          _buildBackListTileRow(details),
          _buildBackListTileRow(parameters),
        ],
      ),
    );
  }
}
