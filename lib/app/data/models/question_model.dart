class QuestionModel {
  final int id, answer;
  final String question;
  final List<dynamic> options;
  final String? image;

  QuestionModel(
      {required this.id,
      required this.question,
      required this.answer,
      required this.options,
      required this.image});
}
