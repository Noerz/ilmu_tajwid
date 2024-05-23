import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ilmu_tajwid/app/modules/quiz/controllers/quiz_controller.dart';

import '../controllers/result_controller.dart';

class ResultView extends GetView<ResultController> {
  const ResultView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/back.jpg'), fit: BoxFit.cover),
          ),
        ),
        Center(
          child: GetBuilder<QuizController>(
            init: Get.find<QuizController>(),
            builder: (controller) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Congratulation',
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        color: Colors.white,
                      ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  'Your Score is',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: Colors.white,
                      ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  '${controller.scoreResult.round()} /100',
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        color: Colors.amber,
                      ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () => controller.startAgain(),
                    child: Text("Mulai Kembali"))
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
