import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final Function selectAnswer;
  final String answerText;

  Answer(this.selectAnswer,this.answerText);  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.deepOrange,
        textColor: Colors.black,
        child: Text(answerText),
        onPressed: selectAnswer,
      ),
    );
  }
}