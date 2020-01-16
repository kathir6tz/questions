import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final _questionText;

  Question(this._questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(18.0),
        padding: const EdgeInsets.all(20.0),
        child: Text(
          _questionText,
          style: TextStyle(
              color: Colors.black, fontSize: 28.0, fontStyle: FontStyle.italic),
          textAlign: TextAlign.center,
        ));
  }
}
