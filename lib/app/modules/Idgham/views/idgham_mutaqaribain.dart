import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ilmu_tajwid/app/core/values/app_text.dart';

class IdghamMutaqaribain extends StatelessWidget {
  const IdghamMutaqaribain({super.key});

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
                    "HUKUM Idgham Mutaqaribain",
                    style: tittle,
                  ),
                ),
              ),
              Text(
                "Idgham Mutaqaribain yaitu : apabila ada dua huruf yang bertemu dengan makhroj dan sifat yang hampir sama, yaitu huruf pertama berharakat sukun atau mati dan huruf yang kedua berharakat.Cara membaca bacaan idgham mutaqaribain adalah harus diidghamkan atau ditasydidkan, yaitu huruf yang pertama diubah menjadi huruf yang kedua.",
                style: subTittle,
              ),
              const SizedBox(height: 20),
              Text(
                "Contoh bacaan Idgham Mutaqaribain : ",
                style: subTittle,
              ),
              Container(
                alignment: Alignment.topRight,
                height: 120,
                child: Image.asset(
                  "assets/images/bacaan_idgham_mutaqaribain.png",
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
