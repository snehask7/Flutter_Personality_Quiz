import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore,this.resetHandler);

  String get resultPhrase{
    var resultText='you did it';
    if(resultScore <= 8)
    {
      resultText='you are innocent';
    }
    else if(resultScore<=12)
    {
      resultText='pretty likeable';
    }
    else if(resultScore<=16)
    {
      resultText='you are strange';
    }
    else{
      resultText='you are bad!';
    }
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
     child: Column(
       children: <Widget>[
         Text(
          resultPhrase,
         style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),
         textAlign: TextAlign.center,
         ),
         FlatButton(child: Text('Restart Quiz'),onPressed: resetHandler )
       ],
     )
    );
  }
}