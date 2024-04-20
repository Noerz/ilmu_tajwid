import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ilmu_tajwid/app/core/values/app_text.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(8)),
              child: Text(
                "BELAJAR ILMU TAJWID",
                style: tittle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
