import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilmu_tajwid/app/data/models/question_model.dart';
import 'package:ilmu_tajwid/app/modules/quiz/controllers/quiz_controller.dart';

import 'answer_option.dart';

class QuestionCard extends StatelessWidget {
  final QuestionModel questionModel;

  const QuestionCard({
    Key? key,
    required this.questionModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            if (questionModel.image != null) Image.asset(questionModel.image!),
            Text(
              questionModel.question,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            ...List.generate(
              questionModel.options.length,
              (index) => Column(
                children: [
                  AnswerOption(
                      questionId: questionModel.id,
                      text: questionModel.options[index],
                      index: index,
                      onPressed: () => Get.find<QuizController>()
                          .checkAnswer(questionModel, index)),
                  const SizedBox(
                    height: 15,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
