import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:ilmu_tajwid/app/core/consts/keys.dart';
import 'package:ilmu_tajwid/app/data/repositories/score/score_repository.dart';
import 'package:ilmu_tajwid/app/modules/quiz/controllers/quiz_controller.dart';
import '../controllers/result_controller.dart';

class ResultView extends GetView<ResultController> {
  final ScoreRepository _scoreRepository = Get.find<ScoreRepository>();
  final _secureStorage = Get.find<FlutterSecureStorage>();

  String _getCurrentDateTime() {
    final now = DateTime.now();
    return "${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}-${now.year}";
  }

  String _getGrade(double score) {
    // implement your logic to get the grade based on the score
    // for example:
    if (score >= 90) {
      return "A";
    } else if (score >= 80) {
      return "B";
    } else if (score >= 70) {
      return "C";
    } else {
      return "D";
    }
  }

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
                  onPressed: () async {
                    final scoreResult = controller.scoreResult;
                    final userId =
                        await _secureStorage.read(key: Keys.id) ?? '';
                    final inputScoreResult = await _scoreRepository.inputScore(
                      user_id: userId,
                      nilai: scoreResult.toString(),
                      grade: _getGrade(scoreResult),
                      waktu: _getCurrentDateTime(),
                    );
                    if (inputScoreResult['status'] == 'success') {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Terjadi Kesalahan")),
                      );
                    } else {
                      controller.startAgain();
                    }
                  },
                  child: Text("Mulai Kembali"),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
