import 'package:flutter/cupertino.dart';

import '../../../home/views/home_view.dart';
import '../../controllers/auth_controller.dart';
import 'package:get/get.dart';

import '../Login.dart';

class OnBoard extends StatelessWidget {
  const OnBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AuthController _authManager = Get.find();

    return Obx(() {
      return _authManager.isLogged.value ? HomeView() : LoginView();
    });
  }
}
