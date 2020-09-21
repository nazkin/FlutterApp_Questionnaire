import 'package:flutter/material.dart';

class Question extends StatelessWidget {

  //Final means value will not be reassigned after it has been assigned 
  final String questionText;
  //The value for this variable will be defined in the parent widget
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.w400, color: Colors.black87,), 
        textAlign: TextAlign.center,
      ),
    );
  }
}