import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ilmu_tajwid/app/core/theme/style.dart';
import 'package:ilmu_tajwid/app/core/utils/promt_utils.dart';
import 'package:ilmu_tajwid/app/global_widgets/action_button.dart';
import 'package:ilmu_tajwid/app/global_widgets/custom_textfield.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.wireframe100,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32),
          child: Column(
            children: [
              const Spacer(flex: 8),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 48,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Selamat Datang',
                      textAlign: TextAlign.center,
                      style: h3.copyWith(
                        color: CustomColors.wireframe800,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Masuk atau buat akun ',
                      textAlign: TextAlign.center,
                      style: subtle.copyWith(
                        color: CustomColors.wireframe700,
                      ),
                    ),
                    const SizedBox(height: 52),
                    Form(
                      key: controller.formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomTextfield(
                            controller: controller.emailController,
                            focusNode: controller.emailFocusNode,
                            labelText: 'Email',
                            hintText: 'Email',
                            validator: (value) {
                              if (value == null || value.trim() == '') {
                                // Validasi jika textfield belum diisi
                                return '*wajib diisi';
                              } else if (!value.isEmail) {
                                // Validasi jika format email tidak sesuai
                                return '*format email tidak valid';
                              }

                              return null;
                            },
                          ),
                          const SizedBox(height: 16),
                          Obx(() {
                            return CustomTextfield(
                              controller: controller.passwordController,
                              focusNode: controller.passwordFocusNode,
                              labelText: 'Password',
                              hintText: 'Password',
                              obscureText: !controller.isPasswordVisible.value,
                              suffixIcon: GestureDetector(
                                onTap: () =>
                                    controller.isPasswordVisible.toggle(),
                                child: Icon(
                                  controller.isPasswordVisible.value
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: CustomColors.wireframe300,
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.trim() == '') {
                                  // Validasi jika textfield belum diisi
                                  return '*wajib diisi';
                                }

                                return null;
                              },
                            );
                          }),
                          const SizedBox(height: 4),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              'Forgot password?',
                              style: subtle.copyWith(
                                color: CustomColors.wireframe400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: ActionButton(
                        text: 'Login',
                        onPressed: () async {
                          // Validasi form terlebih dahulu
                          if (controller.formKey.currentState?.validate() ??
                              false) {
                            // step 1: Tampilkan widget loading
                            PromptUtils.showLoading();

                            // step 2: Jalankan usecase
                            final result = await controller.loginWithEmail(
                              email: controller.emailController.text,
                              password: controller.passwordController.text,
                            );

                            // step 3: Hentikan widget loading
                            PromptUtils.hideLoading();

                            // step 4: Tentukan aksi berdasarkan hasil dari usecase
                            if (result['success']) {
                              // kondisi: Success

                              Get.offAllNamed('/home');
                            } else {
                              // kondisi: Error
                              Get.snackbar(
                                'Login gagal',
                                result['message'],
                              );
                            }
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(flex: 11),
            ],
          ),
        ),
      ),
    );
  }
}
