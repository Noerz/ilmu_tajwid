import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:ilmu_tajwid/app/core/values/app_text.dart';
import 'package:ilmu_tajwid/app/global_widgets/button_widget.dart';
import 'package:ilmu_tajwid/app/modules/Idgham/views/idgham_Bilaghunnah_view.dart';
import 'package:ilmu_tajwid/app/routes/app_pages.dart';

import '../controllers/idgham_controller.dart';

class IdghamView extends GetView<IdghamController> {
  const IdghamView({Key? key}) : super(key: key);
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
                        "HUKUM IDGHAM",
                        style: tittle,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        CustomButton(
                          color: Colors.blue,
                          title: 'Idgham Bighunnah',
                          navigation: () {
                            Get.toNamed(Routes.IdghamBighunnah); // Pindah ke halaman menu
                          },
                        ),
                        CustomButton(
                          color: Colors.blue,
                          title: 'Idgham Mimi',
                          navigation: () {
                            Get.toNamed(
                                Routes.IdghamMimi); // Pindah ke halaman menu
                          },
                        ),
                        CustomButton(
                          color: Colors.blue,
                          title: 'Idgham Mutaqaribain',
                          navigation: () {
                            Get.toNamed(
                                Routes.IdghamMutaqaribain); // Pindah ke halaman menu
                          },
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        CustomButton(
                          color: Colors.blue,
                          title: 'Idgham Bilaghunnah',
                          navigation: () {
                            Get.to(IdghamBilaghunnah()); // Pindah ke halaman menu
                          },
                        ),
                        CustomButton(
                          color: Colors.blue,
                          title: 'Idgham Mutamatsilain',
                          navigation: () {
                            Get.toNamed(
                                Routes.IdghamMutamatsilain); // Pindah ke halaman menu
                          },
                        ),
                        CustomButton(
                          color: Colors.blue,
                          title: 'Idgham Mutajanisain',
                          navigation: () {
                            Get.toNamed(
                                Routes.IdghamMutajanisain); // Pindah ke halaman menu
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
