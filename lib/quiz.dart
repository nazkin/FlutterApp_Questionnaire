import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {

  final Function answerQuestion;
  final List<Map<String, Object>> questions;
  final int qIndex;

  Quiz(this.questions, this.answerQuestion, this.qIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              Question(questions[qIndex]['question']),
              ...(questions[qIndex]['answers'] as List<String>).map((answer) {
                return Answer(answerQuestion, answer);
              })
            ],
          );
  }
}