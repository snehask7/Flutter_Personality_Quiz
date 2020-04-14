import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';
class Quiz extends StatelessWidget {
  final List<Map<String,Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex
  });

  @override
  Widget build(BuildContext context) {
    return Column(
            children:
            [
            Question(
                questions[questionIndex]['questionText']
              ),
              //... is spread operator. takes a list and adds the values to the outer list
              ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map((answer){
                return Answer(() => answerQuestion(answer['Score']),answer['Text']);
              }).toList()
            ],
      );
  }
}