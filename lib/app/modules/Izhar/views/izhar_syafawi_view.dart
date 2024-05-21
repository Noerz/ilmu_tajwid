import 'package:flutter/material.dart';
import 'package:ilmu_tajwid/app/core/values/app_text.dart';

class IzharSyafawi extends StatelessWidget {
  const IzharSyafawi({Key? key});

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
                    "HUKUM IZHAR SYAFAWI",
                    style: tittle,
                  ),
                ),
              ),
              Text(
                "Hukum bacaan izhar syafawi berlaku apabila mim mati ( مْ ) bertemu dengan seluruh huruf hijaiyah, kecuali mim ( م ) dan ba ( ب ). Jika mim mati ( مْ ) bertemu selain huruf mim ( م ) dan ba ( ب ), maka dibaca secara jelas di tenggorokan sesuai makhrajnya.",
                style: subTittle,
              ),
              const SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Huruf-huruf Izhar Syafawi :",
                    style: subTittle,
                  ),
                  Expanded(
                    child: Container(
                      height: 120,
                      child: Image.asset(
                        "assets/images/Huruf huruf izhar syafawi.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Text(
                "Contoh bacaan izhar Syafawi :",
                style: subTittle,
              ),
              Container(
                height: 120,
                child: Image.asset(
                  "assets/images/bacaan izhar syafawi.png",
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
