import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selector;
  final String answerText;
  Answer(this.selector, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(
          answerText,
          style: TextStyle(color: Colors.white),
        ),
        color: Colors.blue,
        onPressed: selector,
      ),
    );
  }
}
