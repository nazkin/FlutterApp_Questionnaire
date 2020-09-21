import 'package:flutter/material.dart';

import './quiz.dart';
import './end.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}
  class MyAppState extends State<MyApp> { 
    var qIndex = 0;
    final String endStr = "The End !";

    final questions = const [
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
      if(qIndex < questions.length){
        setState(() {
          qIndex = qIndex + 1;
        });
      }else{
        print("Quiz Over");
      }
    }

    void resetQuiz() {
      setState(() {
        qIndex = 0;
      });
    }

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("Welcome to Quiz")
            ),
          body: qIndex < questions.length ? Quiz(questions, answerQuestion, qIndex) : End(endStr, resetQuiz)
        ),
      );
    }
  }