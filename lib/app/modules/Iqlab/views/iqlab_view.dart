import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ilmu_tajwid/app/core/values/app_text.dart';

import '../controllers/iqlab_controller.dart';

class IqlabView extends GetView<IqlabController> {
  const IqlabView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    "HUKUM IQLAB",
                    style: tittle,
                  ),
                ),
              ),
              Text(
                "Menukar bunyi nun mati (نْ) atau tanwin (ـًـــٍـــٌ) menjadi mim mati disertai dengung. Oleh karena itu, ketika nun mati ataupun tanwin bertemu dengan huruf ba (ب), bibir atas dan bibir bawah tersebut posisinya tertutup.",
                style: subTittle,
              ),
              const SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Huruf-Huruf Iqlab: ",
                    style: subTittle,
                  ),
                  Expanded(
                    child: Container(
                      height: 120,
                      child: Image.asset(
                        "assets/images/Huruf huruf iqlab.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Text(
                "Contoh bacaan iqlab : ",
                style: subTittle,
              ),
              Container(
                height: 120,
                child: Image.asset(
                  "assets/images/bacaan iqlab.png",
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
