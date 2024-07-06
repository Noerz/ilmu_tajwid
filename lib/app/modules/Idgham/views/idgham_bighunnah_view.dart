import 'package:flutter/material.dart';
import 'package:ilmu_tajwid/app/core/values/app_text.dart';

class IdghamBighunnah extends StatelessWidget {
  const IdghamBighunnah ({Key? key});

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
                "Idgham bighunnah artinya memasukkan nun mati atau tanwin ketika bertemu dengan salah satu dari empat huruf, yaitu ي ن م و. Hukum idgham bighunnah ini dibaca berdengung kira-kira sepanjang 2 harakat",
                style: subTittle,
              ),
              const SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Huruf-huruf Idgham bighunnah : ",
                    style: subTittle,
                  ),
                  Expanded(
                    child: Container(
                      height: 120,
                      child: Image.asset(
                        "assets/images/huruf_huruf_Idgham bighunnah.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Text(
                "Contoh bacaan Idgham Bighunnah : ",
                style: subTittle,
              ),
              Container(
                alignment: Alignment.topRight,
                height: 120,
                child: Image.asset(
                  "assets/images/bacaan_idgham_bighunnah.png",
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
