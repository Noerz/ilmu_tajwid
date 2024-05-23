import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class PromptUtils {
  static void showLoading() {
    Get.dialog(
      const SizedBox(
        width: 50,
        height: 50,
        child: Center(
          child: CircularProgressIndicator(
            color: Colors.red,
          ),
        ),
      ),
      barrierDismissible: false,
    );
  }

  static void hideLoading() {
    if (Get.isDialogOpen ?? false) {
      Get.back();
    }
  }
}
