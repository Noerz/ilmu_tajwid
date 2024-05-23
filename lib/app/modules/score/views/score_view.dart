import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilmu_tajwid/app/data/repositories_impl/score/score_repository.imp.dart';
import 'package:ilmu_tajwid/app/modules/score/controllers/score_controller.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class ScoreView extends GetView<ScoreController> {

   ScoreView({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Fetch scores when the view is built
    controller.fetchScores();

    return Scaffold(
      appBar: AppBar(
        title: Text('Scores'),
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }

        if (controller.errorMessage.isNotEmpty) {
          return Center(child: Text('Error: ${controller.errorMessage.value}'));
        }

        if (controller.scores.isEmpty) {
          return Center(child: Text('No scores found'));
        }

        return ListView.builder(
          itemCount: controller.scores.length,
          itemBuilder: (context, index) {
            final score = controller.scores[index];
            return ListTile(
              title: Text('Score: ${score.nilai}'),
              subtitle: Text('Grade: ${score.grade}\nDate: ${score.waktu}'),
            );
          },
        );
      }),
    );
  }
}
