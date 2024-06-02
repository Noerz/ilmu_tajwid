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
        title: Text('Scores', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator.adaptive());
        }

        if (controller.errorMessage.isNotEmpty) {
          return Center(
            child: Text(
              'Error: ${controller.errorMessage.value}',
              style: TextStyle(fontSize: 18, color: Colors.red),
            ),
          );
        }

        if (controller.scores.isEmpty) {
          return Center(
            child: Text(
              'No scores found',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
          );
        }

        return ListView.builder(
          itemCount: controller.scores.length,
          itemBuilder: (context, index) {
            final score = controller.scores[index];
            return Card(
              margin: EdgeInsets.all(16),
              child: ListTile(
                title: Text(
                  'Nilai: ${score.nilai}',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Grade: ${score.grade}\n Tanggal: ${score.waktu}',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            );
          },
        );
      }),
    );
  }
}