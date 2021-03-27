import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';
class Quiz extends StatelessWidget {
  final questions;
  final questionIndex;
  final anserQuestion;

  Quiz(this.questions,this.questionIndex,this.anserQuestion,);

  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              Question(questions[questionIndex]['questionText']),
              ...(questions[questionIndex]['answer'] as List<String>).map((answer){
                    return Answer(answer, anserQuestion);
              }), 
            ],
          );
  }
}