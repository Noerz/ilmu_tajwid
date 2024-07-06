import 'package:flutter/material.dart';
import 'package:ilmu_tajwid/app/core/values/app_text.dart';

class IdghamBilaghunnah extends StatelessWidget {
  const IdghamBilaghunnah({Key? key});

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
                    "HUKUM Idgham Bighunnah",
                    style: tittle,
                  ),
                ),
              ),
              Text(
                "hukum bacaan yang dibaca dengan cara memasukkan atau melebur tanpa berdengung. Hukum bacaan ini terjadi ketika nun mati atau tanwin bertemu dengan salah satu huruf idgham bilaghunnah yaitu ra (ر) dan lam (ل).",
                style: subTittle,
              ),
              const SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Huruf-huruf Idgham Bilaghunnah : ",
                    style: subTittle,
                  ),
                  Expanded(
                    child: Container(
                      height: 120,
                      child: Image.asset(
                        "assets/images/huruf_huruf_idgham_bilaghunnah.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Text(
                "Contoh bacaan Idgham Bilaghunnah : ",
                style: subTittle,
              ),
              Container(
                alignment: Alignment.topRight,
                height: 120,
                child: Image.asset(
                  "assets/images/bacaan_idgham_bilaghunnah.png",
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
