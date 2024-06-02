import 'package:ilmu_tajwid/app/data/models/score_model.dart';

abstract class ScoreRepository {
  Future<List<Score>> getScore({
    int? user_id,
  });

  Future<Map<String, dynamic>> inputScore({
    required String user_id,
    required String nilai,
    required String grade,
    required String waktu,
  });
}
