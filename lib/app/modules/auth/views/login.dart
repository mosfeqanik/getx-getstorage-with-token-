import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/auth_controller.dart';

class LoginView extends GetView<AuthController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginView'),
        centerTitle: true,

      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            controller.login("savedtoken");
          },
          child: Text(
            'LoginView is working',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
