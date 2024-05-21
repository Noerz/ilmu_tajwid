import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ilmu_tajwid/app/core/values/app_text.dart';
import 'package:ilmu_tajwid/app/global_widgets/button_widget.dart';
import 'package:ilmu_tajwid/app/routes/app_pages.dart';

import '../controllers/izhar_controller.dart';

class IzharView extends GetView<IzharController> {
  const IzharView({Key? key}) : super(key: key);
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
                        "HUKUM IZHAR",
                        style: tittle,
                      ),
                    ),
                  ),
                ),
              ),
              CustomButton(
                color: Colors.blue,
                title: 'Izhar halqi',
                navigation: () {
                  Get.toNamed(Routes.HALQI);// Pindah ke halaman menu
                },
              ),
              CustomButton(
                color: Colors.blue,
                title: 'Izhar syafawi',
                navigation: () {
                  Get.toNamed(Routes.SYAFAWI);// Pindah ke halaman menu
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
