import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ilmu_tajwid/app/core/values/app_text.dart';

class IdghamMutajanisain extends StatelessWidget {
  const IdghamMutajanisain({super.key});

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
                    "HUKUM Idgham mutajanisain",
                    style: tittle,
                  ),
                ),
              ),
              Text(
                "idgham mutajanisain yaitu : apabila ada huruf sukun atau mati bertemu huruf berharakat dan kedua huruf tersebut memiliki makhroj yang sama namun berbeda sifatnya.",
                style: subTittle,
              ),
              const SizedBox(height: 20),
              Text(
                "Contoh bacaan Idgham mutajanisain : ",
                style: subTittle,
              ),
              Container(
                alignment: Alignment.topRight,
                height: 200,
                child: Image.asset(
                  "assets/images/bacaan_idgham_mutajanisain.png",
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
