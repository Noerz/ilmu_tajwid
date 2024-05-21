import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ilmu_tajwid/app/core/values/app_text.dart';
import 'package:ilmu_tajwid/app/global_widgets/button_widget.dart';
import 'package:ilmu_tajwid/app/modules/menu/views/menu_view.dart';
import 'package:ilmu_tajwid/app/routes/app_pages.dart';
import '../controllers/home_controller.dart';


class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
       mainAxisAlignment: MainAxisAlignment.center,
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
                    "BELAJAR ILMU TAJWID",
                    style: tittle,
                  ),
                ),
              ),
            ),
          ),
          CustomButton(
            color: Colors.blue,
            title: 'Menu',
            navigation: () {
              Get.toNamed(Routes.MENU); // Pindah ke halaman menu
            },
          ),
          CustomButton(
            color: Colors.blue,
            title: 'Quiz',
            navigation: () {
              Get.toNamed(Routes.QUIZ);
            },
          ),
          CustomButton(
            color: Colors.blue,
            title: 'Keluar',
            navigation: () {
              // Keluar dari aplikasi
              Get.offAll(MenuView()); // Pergi ke halaman menu
              SystemNavigator.pop(); // Keluar dari aplikasi
            },
          )
        ],
      ),
    );
  }
}
