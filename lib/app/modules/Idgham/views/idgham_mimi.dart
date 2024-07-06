import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ilmu_tajwid/app/core/values/app_text.dart';

class IdghamMimi extends StatelessWidget {
  const IdghamMimi({super.key});

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
                    "HUKUM Idgham Mimi",
                    style: tittle,
                  ),
                ),
              ),
              Text(
                "Hukum bacaan Idgham Mimi adalah salah satu aturan dalam ilmu tajwid yang berkaitan dengan penggabungan dua huruf mim (م) yang berjejer atau berdekatan dalam bacaan Al-Qur'an. Secara harfiah, 'Idgham' berarti 'memasukkan,' dan 'Mimi' merujuk pada huruf mim itu sendiri.",
                style: subTittle,
              ),
              const SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Huruf-huruf Idgham Mimi : ",
                    style: subTittle,
                  ),
                  Expanded(
                    child: Container(
                      height: 120,
                      child: Image.asset(
                        "assets/images/huruf_huruf_idgham_mimi.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Text(
                "Contoh bacaan Idgham Mimi : ",
                style: subTittle,
              ),
              Container(
                alignment: Alignment.topRight,
                height: 120,
                child: Image.asset(
                  "assets/images/bacaan_idgham_mimi.png",
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