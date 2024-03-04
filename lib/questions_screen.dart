import "package:flutter/material.dart";
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {

    // accessing "questions" list 
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          // "answers" is an list 
          // "map" allows you to convert values in a list into other values
          ...currentQuestion.answers.map((answer) {
            return AnswerButton(answerText: answer, onTap: () {})
          }),

          // AnswerButton(
          //   answerText: currentQuestion.answers[0],
          //   onTap: () {},
          // ),
        
        ],
      ),
    );
  }
}
