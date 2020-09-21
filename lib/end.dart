import 'package:flutter/material.dart';

class End extends StatelessWidget {

  final String endStr;
  final Function resetQuiz;

  End(this.endStr, this.resetQuiz);


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            endStr,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.blueAccent),
          ),
          FlatButton(
            onPressed: resetQuiz, 
            child: Text("Restart"),
            color: Colors.deepOrangeAccent,
          ),
        ]
      ),
    );
  }
}