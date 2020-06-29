import 'package:flutter/material.dart';
import 'package:practice/result.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override 
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  
    final _questions = const [
      {
        'questionText': "what\'s my favourite colour",
        'answers':[{'text':'black','score':10},{'text':'red','score':5},{'text':'green','score':3},{'text':'white','score':1}]
      },
      {
        'questionText': "what\'s my favourite animal",
        'answers':[{'text':'rabbit','score':10},{'text':'snake','score':5},{'text':'elephant','score':3},{'text':'lion','score':1}]
      },
      {
        'questionText': "who\'s my favourite instructor",
        'answers':[{'text':'max','score':10},{'text':'max','score':5},{'text':'max','score':3},{'text':'max','score':1}]
      }
    ];

  var _questionIndex =0;
  var _totalScore=0;

  void _restartQuiz(){
    setState(() {
      _questionIndex =0;
    _totalScore=0;
    });
  }

  void _answerQuestions(int score){

    _totalScore=_totalScore+score;

    setState(() {
    _questionIndex=_questionIndex+1;
    });
    
    print(_questionIndex);

    if(_questionIndex < _questions.length){
      print("we have more questions");
    }
    else{
      print("No more questions");
    }
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first App"),
        ),
        body:_questionIndex < _questions.length ? 
        Quiz(answerQuestions: _answerQuestions,questionIndex: _questionIndex,questions: _questions,)
         : Result(_totalScore,_restartQuiz),
          ),
    );
  }
}

