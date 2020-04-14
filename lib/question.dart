import 'package:flutter/material.dart';


class Question extends StatelessWidget {
  final String questionText;  //value never changes after constructor initialization since stateless widget

  Question(this.questionText);  //constructor

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
      questionText, 
      style: TextStyle(fontSize: 28),
      textAlign: TextAlign.center,
      ),
    );
  }
}