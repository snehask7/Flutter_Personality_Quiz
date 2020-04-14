import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
void main(){
  runApp(MyApp());  //add core widget to runapp
}

// MaterialApp is a widget, it is a class
//home widget is shown when app opened
class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
   final _questions= const[
      {'questionText': 'What\'s your favorite color?',
      'answers': [
                {'Text': 'Black','Score': 10},
                {'Text': 'Red','Score': 8},
                {'Text': 'Blue','Score': 4},
                {'Text': 'White','Score': 1}
               ]
     },
    {'questionText': 'What\'s your favorite animal?',
      'answers': [
                {'Text': 'Snake','Score': 10},
                {'Text': 'Lion','Score': 8},
                {'Text': 'Panda','Score': 4},
                {'Text': 'Deer','Score': 1}
               ]    
     },
     {'questionText': 'What\'s your favorite food?',
      'answers': [
                {'Text': 'Taco','Score': 10},
                {'Text': 'Burrito','Score': 8},
                {'Text': 'Pizza','Score': 4},
                {'Text': 'Fries','Score': 1}
               ] 
    },
      
    ];
  int _questionIndex=0;
  int _totalScore=0;

  void _resetQuiz(){
    setState((){
     _questionIndex=0;
    _totalScore=0;
    });

  }
  void _answerQuestion(int score){
    _totalScore+=score;

    setState((){
          _questionIndex=_questionIndex+1;
    });
     if(_questionIndex<_questions.length){
       print('we have more questions');
    }
    else{
      print('no more');
    }
  }

  Widget build(BuildContext context){
    //const is compile time constant, final is runtime constant
   
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex<_questions.length
          ? Quiz(
                  answerQuestion: _answerQuestion, 
                  questionIndex: _questionIndex,
                  questions: _questions
                )
          : Result(_totalScore,_resetQuiz)
        ), 
      ); 
  }
}

