import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answare extends StatelessWidget {
  String text;
  Function selectHandler;

  Answare(selectHandler, text) {
    this.text = text;
    this.selectHandler = selectHandler;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
