import 'package:flutter/cupertino.dart';
import "./question.dart";
import "./answare.dart";

class Quiz extends StatelessWidget {
  List<Map<String, Object>> questions;
  int questionIndex;
  Function answareQuestion;

  Quiz(
      {@required this.questions,
      @required this.answareQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questions.elementAt(questionIndex)["questionText"],
        ),
        ...(questions[questionIndex]["answers"] as List<Map<String, Object>>)
            .map((answare) {
              //passare argomenti ad una function
          return Answare(() => answareQuestion(answare["score"]), answare["text"]);
        }).toList()
      ],
    );
  }
}
