import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:ilmu_tajwid/app/controllers/auth_controller.dart';

class RegistrasiController extends GetxController {
  final _authController = Get.find<AuthController>();

  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameFocusNode = FocusNode();
  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  RxBool isPasswordVisible = false.obs;

  Future<Map<String, dynamic>> register({
    required String name,
    required String email,
    required String password,
  }) async {
    return await _authController.register(
      name: name,
      email: email,
      password: password,
    );
  }
}
