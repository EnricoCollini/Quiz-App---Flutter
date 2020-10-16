import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  var totScore = 0;
  Function reset;

  Result(score, reset) {
    this.totScore = score;
    this.reset = reset;
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(child: Text("you did it!")),
      Center(child: Text("tot score: $totScore ")),
      FlatButton(onPressed: reset, child: Text("Restart Quiz", style:TextStyle(color: Colors.blue))),
    ]);
  }
}
