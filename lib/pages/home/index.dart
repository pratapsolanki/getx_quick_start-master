import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_quick_start/common/routes/app_pages.dart';
import 'package:getx_quick_start/pages/list_detail/index.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  _showSnackbar(Map? result) {
    if (result != null) {
      Get.snackbar(
          "return value", "success -> " + result["success"].toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Getx-Quick Start"),
      ),
      body: ListView(
        children: [
          // 导航
          ListTile(
            title: Text("Navigation - Named Routes home > list"),
            subtitle: Text('Get.toNamed("/home/list")'),
            onTap: () => Get.toNamed("/home/list"),
          ),
          ListTile(
            title: Text("Navigation - Named Routes home > list > detail"),
            subtitle: Text('Get.toNamed("/home/list/detail")'),
            onTap: () => Get.toNamed("/home/list/detail"),
          ),
          ListTile(
            title: Text("Navigation - Class Object"),
            subtitle: Text("Get.to(DetailView())"),
            onTap: () => Get..to(DetailView()),
          ),
          ListTile(
            title: Text("Navigation - Clear Previous"),
            subtitle: Text("Get.off(DetailView())"),
            onTap: () => Get.off(DetailView()),
          ),
          ListTile(
            title: Text("Navigation - Clear All"),
            subtitle: Text("Get.offAll(DetailView())"),
            onTap: () => Get.offAll(DetailView()),
          ),
          ListTile(
            title: Text("Navigation-arguments pass value + return value"),
            subtitle: Text(
                'Get.toNamed("/home/list/detail", arguments: {"id": 999})'),
            onTap: () async {
              var result = await Get.toNamed("/home/list/detail",
                  arguments: {"id": 999});
              _showSnackbar(result);
            },
          ),
          ListTile(
            title: Text("Navigation-parameters pass value + return value"),
            subtitle: Text('Get.toNamed("/home/list/detail?id=666")'),
            onTap: () async {
              var result = await Get.toNamed("/home/list/detail?id=666");
              _showSnackbar(result);
            },
          ),
          ListTile(
            title: Text("Navigation - parameter pass value + return value"),
            subtitle: Text('Get.toNamed("/home/list/detail/777")'),
            onTap: () async {
              var result = await Get.toNamed("/home/list/detail/777");
              _showSnackbar(result);
            },
          ),
          ListTile(
            title: Text("Navigation - not found"),
            subtitle: Text('Get.toNamed("/aaa/bbb/ccc")'),
            onTap: () => Get.toNamed("/aaa/bbb/ccc"),
          ),
          ListTile(
            title: Text("Navigation - Middleware - Authentication Auth"),
            subtitle: Text('Get.toNamed(AppRoutes.My)'),
            onTap: () => Get.toNamed(AppRoutes.My),
          ),
          Divider(),

          // 嵌套导航
          ListTile(
            title: Text("Nested Navigation"),
            subtitle: Text('Get.toNamed(AppRoutes.NestedNavigator)'),
            onTap: () => Get.toNamed(AppRoutes.NestedNavigator),
          ),
          Divider(),

          // 组件
          ListTile(
            title: Text("components-snackbar"),
            subtitle: Text('Get.snackbar("title","information",...)'),
            onTap: () => Get.snackbar(
              "title",
              "information",
            ),
          ),
          ListTile(
            title: Text("components-dialog"),
            subtitle: Text('Get.defaultDialog(...)'),
            onTap: () => Get.defaultDialog(
              title: "title",
              content: Column(
                children: [
                  Text("line 1"),
                  Text("line 2"),
                  Text("line 3"),
                ],
              ),
              textConfirm: "confirm",
              textCancel: "Cancel",
              onConfirm: () => Get.back(),
            ),
          ),
          ListTile(
            title: Text("components-bottomSheet"),
            subtitle: Text('Get.bottomSheet(...)'),
            onTap: () => Get.bottomSheet(
              Container(
                height: 200,
                color: Colors.white,
                child: Column(
                  children: [
                    Text("line 1"),
                    Text("line 2"),
                    Text("line 3"),
                  ],
                ),
              ),
            ),
          ),
          Divider(),

          // state 状态
          ListTile(
            title: Text("State-Obx"),
            subtitle: Text('Get.toNamed(AppRoutes.Obx)'),
            onTap: () => Get.toNamed(AppRoutes.State + AppRoutes.Obx),
          ),
          ListTile(
            title: Text("State-Getx"),
            subtitle: Text('Get.toNamed(AppRoutes.Getx)'),
            onTap: () => Get.toNamed(AppRoutes.State + AppRoutes.Getx),
          ),
          ListTile(
            title: Text("State-GetBuilder"),
            subtitle: Text('Get.toNamed(AppRoutes.GetBuilder)'),
            onTap: () => Get.toNamed(AppRoutes.State + AppRoutes.GetBuilder),
          ),
          ListTile(
            title: Text("State-ValueBuilder"),
            subtitle: Text('Get.toNamed(AppRoutes.ValueBuilder)'),
            onTap: () => Get.toNamed(AppRoutes.State + AppRoutes.ValueBuilder),
          ),
          ListTile(
            title: Text("State-Workers"),
            subtitle: Text('Get.toNamed(AppRoutes.Workers)'),
            onTap: () => Get.toNamed(AppRoutes.State + AppRoutes.Workers),
          ),
          Divider(),

          // 依赖注入
          ListTile(
            title: Text("Dependency-Put-Find"),
            subtitle: Text('Get.toNamed(AppRoutes.DependencyPutFind)'),
            onTap: () =>
                Get.toNamed(AppRoutes.Dependency + AppRoutes.DependencyPutFind),
          ),
          ListTile(
            title: Text("Dependency-LazyPut"),
            subtitle: Text('Get.toNamed(AppRoutes.DependencyLazyPut)'),
            onTap: () =>
                Get.toNamed(AppRoutes.Dependency + AppRoutes.DependencyLazyPut),
          ),
          Divider(),

          // Count
          ListTile(
            title: Text("Count"),
            subtitle: Text('Get.toNamed(AppRoutes.Count)'),
            onTap: () => Get.toNamed(AppRoutes.Count),
          ),
          Divider(),

          // GetxService
          ListTile(
            title: Text("Service"),
            subtitle: Text('Get.toNamed(AppRoutes.Service)'),
            onTap: () => Get.toNamed(AppRoutes.Service),
          ),
          Divider(),

          // GetConnect
          ListTile(
            title: Text("GetConnect"),
            subtitle: Text('Get.toNamed(AppRoutes.GetConnect)'),
            onTap: () => Get.toNamed(AppRoutes.GetConnect),
          ),
          ListTile(
            title: Text("GetConnectStateMixin"),
            subtitle: Text('Get.toNamed(AppRoutes.GetConnectStateMixin)'),
            onTap: () => Get.toNamed(AppRoutes.GetConnectStateMixin),
          ),
          Divider(),

          // 控制器 + dio
          ListTile(
            title: Text("GetControllerDio"),
            subtitle: Text('Get.toNamed(AppRoutes.GetControllerDio)'),
            onTap: () => Get.toNamed(AppRoutes.GetControllerDio),
          ),
          Divider(),

          // 多语言
          ListTile(
            title: Text("Lang"),
            subtitle: Text('Get.toNamed(AppRoutes.Lang)'),
            onTap: () => Get.toNamed(AppRoutes.Lang),
          ),
          Divider(),

          // 样式
          ListTile(
            title: Text("Theme"),
            subtitle: Text('Get.toNamed(AppRoutes.Theme)'),
            onTap: () => Get.toNamed(AppRoutes.Theme),
          ),
          Divider(),
        ],
      ),
    );
  }
}
