import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ilmu_tajwid/app/core/values/app_text.dart';
import 'package:ilmu_tajwid/app/global_widgets/button_widget.dart';
import 'package:ilmu_tajwid/app/routes/app_pages.dart';

import '../controllers/ikhfa_controller.dart';

class IkhfaView extends GetView<IkhfaController> {
  const IkhfaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        "HUKUM IKHFA",
                        style: tittle,
                      ),
                    ),
                  ),
                ),
              ),
              CustomButton(
                color: Colors.blue,
                title: 'Ikhfa Haqiqi',
                navigation: () {
                  Get.toNamed(Routes.HAQIQI);// Pindah ke halaman menu
                },
              ),
              CustomButton(
                color: Colors.blue,
                title: 'Ikhfa Syafawi',
                navigation: () {
                  Get.toNamed(Routes.IKHFA_SYAFAWI);// Pindah ke halaman menu
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
