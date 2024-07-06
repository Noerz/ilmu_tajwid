import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ilmu_tajwid/app/core/values/app_text.dart';

class IdghamMutamatsilain extends StatelessWidget {
  const IdghamMutamatsilain({super.key});

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
                    "HUKUM Idgham Mutamatsilain",
                    style: tittle,
                  ),
                ),
              ),
              Text(
                "Idgham Mutamatsilain yaitu : apabila ada huruf yang bertemu huruf yang sama yang juga memiliki makhroj dan sifat yang sama, huruf yang pertama berharakat sukun dan huruf yang kedua berharakat.Cara membacanya dengan memasukkan huruf sukun yang pertama pada huruf yang berharakat yang kedua, dan ditekan serta ditahan tidak lebih dari satu harkat.",
                style: subTittle,
              ),
              const SizedBox(height: 20),
              Text(
                "Contoh bacaan Idgham Mutamatsilain : ",
                style: subTittle,
              ),
              Container(
                alignment: Alignment.topRight,
                height: 120,
                child: Image.asset(
                  "assets/images/bacaan_idgham_mutamatsilain.png",
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
