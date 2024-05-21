import 'package:flutter/material.dart';
import 'package:ilmu_tajwid/app/core/values/app_text.dart';

class IkhfaHaqiqi extends StatelessWidget {
  const IkhfaHaqiqi ({Key? key});

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
                    "HUKUM IKHFA HAQIQI",
                    style: tittle,
                  ),
                ),
              ),
              Text(
                "Ikhfa haqiqi merupakan bagian dari hukum nun mati atau tanwin. Hukum bacaan ini terjadi apabila nun mati (نْ) atau tanwin ( ـَــًـ , ـِــٍـ , ـُــٌـ ) bertemu dengan salah satu dari 15 hurufnya.",
                style: subTittle,
              ),
              const SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Huruf-huruf Ikhfa haqiqi : ",
                    style: subTittle,
                  ),
                  Expanded(
                    child: Container(
                      height: 120,
                      child: Image.asset(
                        "assets/images/Huruf huruf ikhfa haqiqi.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Text(
                "Contoh bacaan Ikhfa Haqiqi : ",
                style: subTittle,
              ),
              Container(
                height: 120,
                child: Image.asset(
                  "assets/images/bacaan ikhfa haqiqi.png",
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
