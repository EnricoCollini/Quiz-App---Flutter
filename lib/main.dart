import 'package:flutter/material.dart';
import './question.dart';
import './answare.dart';
import "./quiz.dart";
import 'result.dart';

//solo per le funzioni con un solo omando
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  var _questions = [
    {
      "questionText": "what's your favourite color ? ",
      "answers": [
        {'text': "Black", "score": 10},
        {'text': "red", "score": 6},
        {'text': "green", "score": 2},
        {'text': "yellow", "score": 2},
      ],
    },
    {
      "questionText": "what's your favourite animal ? ",
      "answers": [
        {'text': "rabbit", "score": 10},
        {'text': "dog", "score": 6},
        {'text': "cat", "score": 2},
        {'text': "snake", "score": 2},
      ],
    },
    {
      "questionText": "what's your favourite food ? ",
      "answers": [
        {"text": "Pizza", "score" : 10},
        {"text": "Pizza", "score" : 10},
        {"text": "Pizza", "score" : 10}
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My first App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answareQuestion: _answareQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, resetQuiz),
      ),
    );
  }

  void _answareQuestion(int score) {
    _totalScore = _totalScore + score;
    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    }

    print(_questionIndex);
    return null;
  }

  void resetQuiz(){
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }
}