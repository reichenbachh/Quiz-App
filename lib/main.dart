import "package:flutter/material.dart";
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      "question": "What\'s is your favourite color?",
      "answers": [
        {"text": "blue", "score": 1},
        {"text": "orange", "score": 2},
        {"text": "green", "score": 3},
        {"text": "white", "score": 4}
      ]
    },
    {
      "question": "what\'s is your favourite movie?",
      "answers": [
        {"text": "Titanic", "score": 1},
        {"text": "Back to America", "score": 2},
        {"text": "Apocalypto", "score": 3},
        {"text": "Killer Bean", "score": 4}
      ]
    },
    {
      "question": "what\'s is your favourite programming language?",
      "answers": [
        {"text": "C++", "score": 1},
        {"text": "Python", "score": 2},
        {"text": "Javascript", "score": 3},
        {"text": "Dart", "score": 4}
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetTest() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int totalScore) {
    setState(() {
      _questionIndex = _questionIndex + 1;
      _totalScore += totalScore;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Quiz App"),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questionList: _questions,
                  questionIndex: _questionIndex,
                  answerQuestion: _answerQuestion,
                )
              : Result(_totalScore, _resetTest)),
    );
  }
}
