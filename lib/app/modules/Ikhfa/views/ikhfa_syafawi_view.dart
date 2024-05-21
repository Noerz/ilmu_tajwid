import 'package:flutter/material.dart';
import 'package:ilmu_tajwid/app/core/values/app_text.dart';

class IkhfaSyafawi extends StatelessWidget {
  const IkhfaSyafawi ({Key? key});

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
                    "HUKUM IKHFA SYAFAWI",
                    style: tittle,
                  ),
                ),
              ),
              Text(
                "hukum bacaan tajwid mim sukun. Nantinya, apabila mim mati (مْ) bertemu dengan huruf ba (ب), cara membacanya mim mati disamarkan di bibir sambil didengungkan sekitar 2 sampai 3 harakat.",
                style: subTittle,
              ),
              const SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Huruf-Huruf Ikhfa Syafawi : ",
                    style: subTittle,
                  ),
                  Expanded(
                    child: Container(
                      height: 120,
                      child: Image.asset(
                        "assets/images/Huruf huruf ikhfa syafawi.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Text(
                "Contoh bacaan Ikhfa Syafawi : ",
                style: subTittle,
              ),
              Container(
                height: 120,
                child: Image.asset(
                  "assets/images/bacaan ikhfa syafawi.png",
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
