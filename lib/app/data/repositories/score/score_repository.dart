import 'package:ilmu_tajwid/app/data/models/score_model.dart';

abstract class ScoreRepository {
  Future<List<Score>> getScore({
    int? user_id,
  });
}
