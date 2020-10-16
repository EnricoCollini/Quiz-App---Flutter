import 'package:flutter/cupertino.dart';

class Question extends StatelessWidget {
  String questionText;

  Question(questionText) {
    this.questionText = questionText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 5),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
