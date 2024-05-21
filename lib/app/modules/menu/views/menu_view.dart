import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ilmu_tajwid/app/core/values/app_text.dart';
import 'package:ilmu_tajwid/app/global_widgets/button_widget.dart';
import 'package:ilmu_tajwid/app/routes/app_pages.dart';

class MenuView extends GetView<MenuController> {
  const MenuView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
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
                        "MATERI TAJWID",
                        style: tittle,
                      ),
                    ),
                  ),
                ),
              ),
              
              CustomButton(
                color: Colors.blue,
                title: 'Hukum Izhar',
                navigation: () {
                  Get.toNamed(Routes.IZHAR); // Pindah ke halaman menu
                },
              ),
              CustomButton(
                color: Colors.blue,
                title: 'Hukum Ikhfa',
                navigation: () {
                  Get.toNamed(Routes.IKHFA); // Pindah ke halaman menu
                },
              ),
              CustomButton(
                color: Colors.blue,
                title: 'Hukum Idgham',
                navigation: () {
                  Get.toNamed(Routes.IDGHAM); // Pindah ke halaman menu
                },
              ),
              CustomButton(
                color: Colors.blue,
                title: 'Hukum Iqlab',
                navigation: () {
                  Get.toNamed(Routes.IQLAB); // Pindah ke halaman menu
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
