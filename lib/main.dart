import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}
  class MyAppState extends State<MyApp> { 
    var qIndex = 0;

    var questions = [
      {
        'question':"What is your favorite color ?",
        'answers':["Blue", "Green", "Red", "Yellow"],
        },
      {
        'question':"Which one of these cars would you purchase given the chance ?",
        'answers':["Ford", "Toyota", "KIA", "BMW"],
        },
      {
        'question':"Which one of these movies do you relate to the most?",
        'answers':["Home Alone", "Harry Potter", "Saw", "The Notebook"],
        },
      {
        'question':"Which one of these music types do you prefer the most?",
        'answers':["Rock", "Hip Hop", "Classic", "Drum n Bass"],
        },
    ];

    void answerQuestion() {
      setState(() {
        qIndex = qIndex + 1;
      });
    }

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Welcome to Quiz")
            ),
          body: Column(
            children: [
              Question(questions[qIndex]['question']),
              ...(questions[qIndex]['answers'] as List<String>).map((answer) {
                return Answer(answerQuestion, answer);
              })
            ],
          ),
        ),
      );
    }
  }