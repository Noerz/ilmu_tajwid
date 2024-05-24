import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilmu_tajwid/app/data/models/question_model.dart';
import 'package:ilmu_tajwid/app/routes/app_pages.dart';

class QuizController extends GetxController {
  String name = '';
  //question variables
  int get countOfQuestion => _questionsList.length;
  final List<QuestionModel> _questionsList = [
    QuestionModel(
        id: 1,
        question: "Apa nama hukum dari potongan ayat diatas ?",
        answer: 2,
        options: [
          'Idgham Mimi',
          'Idgham Bighunnah',
          'Idgham Mutamatsilain',
          'Idgham Bilaghunnah '
        ],
        image: 'assets/test.png'),
    QuestionModel(
        id: 2,
        question: "Manakah yang termasuk contoh ikfa syafawi ?",
        answer: 2,
        options: [
          'أَنْعَمْتَ',
          'هُمْ بِذَلِكَ ',
          'هُمْ فِيْهَا',
          'لَهُمْ مَثَلاً'
        ],
        image: null),
    QuestionModel(
        id: 3,
        question: "Huruf ikfa syafawi ada satu yaitu ?",
        answer: 4,
        options: [
          'ن',
          'م',
          'ت',
          'ب',
        ],
        image: null),
    QuestionModel(
        id: 4,
        question: "Apa nama hukum dari potongan ayat diatas ?",
        answer: 4,
        options: [
          'Izhar Halqi',
          'Ikhfa Haqiqi',
          'Izhar Syafawi',
          'Ikhfa Syafawi'
        ],
        image: 'assets/quiz2.png'),
    QuestionModel(
        id: 5,
        question: "Berikut ini merupakan huruf idghom bighunnah, kecuali ?",
        answer: 4,
        options: [
          'ي',
          ' و',
          'ن',
          'ب',
        ],
        image: null),
    QuestionModel(
        id: 6,
        question: 'Yang dinamakan dengan iqlab ialah ?',
        answer: 4,
        options: [
          'Nun sukun atau tanwin bertemu dg ي _ م _ ن _ و',
          'Nun sukun atau tanwin bertemu ا _ ح _ خ _ ع _ غ _ ء',
          'Nun sukun atau tanwin bertemu ا _ ر',
          'Nun sukun atau tanwin bertemu ب',
        ],
        image: null),
    QuestionModel(
        id: 7,
        question: "Yang dimaksud idghom mutamasilain (idghom mimi) ialah ?",
        answer: 3,
        options: [
          'mim mati menghadapi huruf hijaiyah  selain م dan ب',
          'mim mati menghadapi ب',
          'mim mati menghadapi م',
          'mim mati menghadapi ن',
        ],
        image: null),
    QuestionModel(
        id: 8,
        question:
            "Ada berapa huruf hijaiyah hukum bacaan ikhfa haqiqi dalam nun mati/tanwin ?",
        answer: 1,
        options: ['15', '2', '4', '6'],
        image: null),
    QuestionModel(
        id: 9,
        question: "Kalimat مِنْ رَبِّهِمْ merupakan contoh hukum ?",
        answer: 2,
        options: [
          'idghom bighunnah',
          'idghom bilaghunnah',
          'ikhfa',
          'izhar',
        ],
        image: null),
    QuestionModel(
        id: 10,
        question:
            "Dalam hukum bacaan nun mati/tanwin huruf lam dan ro termasuk apa ? ",
        answer: 4,
        options: [
          'izhar',
          'Iqlab',
          'Idghom bighunnah',
          'Idghom bilaghunnah',
        ],
        image: null),
    QuestionModel(
        id: 11,
        question: "Yang termasuk huruf idghom ialah ?",
        answer: 3,
        options: [
          'و ف ق',
          'س ش ص',
          'ي ن م',
          'ل ر ز',
        ],
        image: null),
    QuestionModel(
        id: 12,
        question: "Hukum nun sukun pada kata مِنْ بَعْدِ adalah",
        answer: 2,
        options: [
          'idzhar',
          'Iqlab',
          'Idghom',
          'Ikhfa',
        ],
        image: null),
    QuestionModel(
        id: 13,
        question: "Hukum Berikut ini merupakan contoh izhar ? ",
        answer: 2,
        options: [
          'مَنْ يَقُوْلُ',
          'مِنْ خَوْفٍ',
          'مِنْ بَعْدِ',
          'مِنْ قَبْلِك',
        ],
        image: null),
    QuestionModel(
        id: 14,
        question: "Hukum membaca Al-Qur’an dengan ilmu tajwid adalah ?",
        answer: 1,
        options: [
          'Wajin',
          'Makruh',
          'Mubah',
          'Sunnah',
        ],
        image: null),
    QuestionModel(
        id: 15,
        question: "Yang dinamakan dengan iqlab ialah ?",
        answer: 4,
        options: [
          'Nun sukun atau tanwin bertemu dg ي _ م _ ن _ و',
          'Nun sukun atau tanwin bertemu ا _ ح _ خ _ ع _ غ _ ء',
          'Nun sukun atau tanwin bertemu ا _ ر',
          'Nun sukun atau tanwin bertemu ب',
        ],
        image: null),
    QuestionModel(
        id: 16,
        question: "Apa nama hukum dari potongan ayat diatas ? ",
        answer: 3,
        options: [
          'Idgham mimi',
          'Idgham bilaghunnah',
          'Idgham mutajanisain',
          'Idgham mutaqaribain',
        ],
        image: 'assets/quiz16.png'),
    QuestionModel(
        id: 17,
        question:
            "Hukum bacaan izhar Syafawi pada nun mati/tanwin ada berapa huruf ?",
        answer: 1,
        options: [
          '26',
          '1',
          '4',
          '6',
        ],
        image: null),
    QuestionModel(
        id: 18,
        question:
            "Hukum bacaan izhar Halqi pada nun mati/tanwin ada berapa huruf ?",
        answer: 4,
        options: [
          '2',
          '1',
          '4',
          '6',
        ],
        image: null),
    QuestionModel(
        id: 19,
        question: "Ada berapa hukum bacaan nun mati/tanwin ?",
        answer: 3,
        options: [
          '3',
          '5',
          '6',
          '2',
        ],
        image: null),
    QuestionModel(
        id: 20,
        question: "Yang dinamakan ikhfa’ ialah ? ",
        answer: 4,
        options: [
          'Nun sukun atau tanwin bertemu dg 10 huruf',
          'Nun sukun atau tanwin bertemu dg 12 huruf',
          'Nun sukun atau tanwin bertemu dg 14 huruf',
          'Nun sukun atau tanwin bertemu dg 15 huruf',
        ],
        image: null),
  ];

  List<QuestionModel> get questionsList => [..._questionsList];

  bool _isPressed = false;

  bool get isPressed => _isPressed; //To check if the answer is pressed

  double _numberOfQuestion = 1;

  double get numberOfQuestion => _numberOfQuestion;

  int? _selectAnswer;

  int? get selectAnswer => _selectAnswer;

  int? _correctAnswer;

  int _countOfCorrectAnswers = 0;

  int get countOfCorrectAnswers => _countOfCorrectAnswers;

  //map for check if the question has been answered
  final Map<int, bool> _questionIsAnswerd = {};

  //page view controller
  late PageController pageController;

  //timer
  Timer? _timer;

  final maxSec = 15;

  final RxInt _sec = 15.obs;

  RxInt get sec => _sec;

  @override
  void onInit() {
    pageController = PageController(initialPage: 0);
    startTimer();
    resetAnswer();
    super.onInit();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

  //get final score
  double get scoreResult {
    return _countOfCorrectAnswers * 100 / _questionsList.length;
  }

  void checkAnswer(QuestionModel questionModel, int selectAnswer) {
    _isPressed = true;

    _selectAnswer = selectAnswer;
    _correctAnswer = questionModel.answer;

    if (_correctAnswer == _selectAnswer) {
      _countOfCorrectAnswers++;
    }
    stopTimer();
    _questionIsAnswerd.update(questionModel.id, (value) => true);
    Future.delayed(const Duration(milliseconds: 500))
        .then((value) => nextQuestion());
    update();
  }

  //check if the question has been answered
  bool checkIsQuestionAnswered(int quesId) {
    return _questionIsAnswerd.entries
        .firstWhere((element) => element.key == quesId)
        .value;
  }

  void nextQuestion() {
    if (_timer != null || _timer!.isActive) {
      stopTimer();
    }

    if (pageController.page == _questionsList.length - 1) {
      Get.offAndToNamed(Routes.RESULT);
    } else {
      _isPressed = false;
      pageController.nextPage(
          duration: const Duration(milliseconds: 500), curve: Curves.linear);

      startTimer();
    }
    _numberOfQuestion = pageController.page! + 2;
    update();
  }

  //called when start again quiz
  void resetAnswer() {
    for (var element in _questionsList) {
      _questionIsAnswerd.addAll({element.id: false});
    }
    update();
  }

  //get right and wrong color
  Color getColor(int answerIndex) {
    if (_isPressed) {
      if (answerIndex == _correctAnswer) {
        return Colors.green.shade700;
      } else if (answerIndex == _selectAnswer &&
          _correctAnswer != _selectAnswer) {
        return Colors.red.shade700;
      }
    }
    return Colors.white;
  }

  //het right and wrong icon
  IconData getIcon(int answerIndex) {
    if (_isPressed) {
      if (answerIndex == _correctAnswer) {
        return Icons.done;
      } else if (answerIndex == _selectAnswer &&
          _correctAnswer != _selectAnswer) {
        return Icons.close;
      }
    }
    return Icons.close;
  }

  void startTimer() {
    resetTimer();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_sec.value > 0) {
        _sec.value--;
      } else {
        stopTimer();
        nextQuestion();
      }
    });
  }

  void resetTimer() => _sec.value = maxSec;

  void stopTimer() => _timer!.cancel();
  //call when start again quiz
  void startAgain() {
    _correctAnswer = null;
    _countOfCorrectAnswers = 0;
    resetAnswer();
    _selectAnswer = null;
    Get.offAllNamed(Routes.HOME);
  }
}
