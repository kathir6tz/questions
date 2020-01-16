import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  
  Color _color;
  final _buttonText;
  Answer(this._color,this._buttonText,this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:RaisedButton(
        color: _color,
        onPressed: selectHandler,
        child: Text("Answer 1"),
      )
      
    );
  }
}