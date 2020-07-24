import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;
  Result(this.totalScore, this.resetQuiz);

  String get resultText {
    String endText;
    if (totalScore <= 4) {
      endText =
          "You completed the quiz with a score of $totalScore,You are really bad. ";
    } else if (totalScore > 4 || totalScore <= 8) {
      endText =
          "You completed the quiz with a score of $totalScore,You are okay. ";
    } else if (totalScore > 8 || totalScore >= 12) {
      endText =
          "You completed the quiz with a score of $totalScore,You are really good. ";
    }
    return endText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultText,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          child: Text(
            "Restart Quiz",
            style: TextStyle(color: Colors.blue),
          ),
          onPressed: resetQuiz,
        )
      ],
    ));
  }
}
