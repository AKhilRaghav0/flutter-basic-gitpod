// ignore_for_file: deprecated_member_use

import 'dart:html';

import 'package:flutter/material.dart';

/* void main() {
  runApp(MyApp());
} */

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex = questionIndex + 1;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what\'s is your favorite anime?',
      'How many episodes you ever watched?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test_App'),
        ),
        body: Column(
          children: [
            Text(
              questions.elementAt(questionIndex),
            ),
            RaisedButton(
                child: Text('Answer 1'),
                onPressed: () => print('Answer 1 clicked')),
            RaisedButton(
                child: Text('Answer 2'),
                onPressed: () {
                  print('Answer 2 chosen');
                }),
            RaisedButton(
                child: Text('Answer 3'),
                onPressed: () => print("Button 3 smashed")),
            RaisedButton(
                child: Text('Answer 4'),
                onPressed: () {
                  print('4th button nearly haxxed');
                }),
          ],
        ),
      ),
    );
  }
}
