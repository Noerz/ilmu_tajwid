import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilmu_tajwid/app/controllers/auth_controller.dart';


class LoginController extends GetxController {
  final _authController = Get.find<AuthController>();

  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  RxBool isPasswordVisible = false.obs;

  Future<Map<String, dynamic>> loginWithEmail({
    required String email,
    required String password,
  }) async {
    return await _authController.loginWithEmail(
      email: email,
      password: password,
    );
  }
}
