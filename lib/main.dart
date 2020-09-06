import 'package:flutter/material.dart';

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
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "Whats your favourite color?",
      "Whats your favourite food?"
    ];

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("My app"),
            ),
            body: Column(
              children: <Widget>[
                Text(questions[questionIndex]),
                RaisedButton(
                  child: Text("Answer 1"),
                  onPressed: answerQuestion,
                ),
                RaisedButton(
                  child: Text("Answer 2"),
                  onPressed: answerQuestion,
                ),
                RaisedButton(
                  child: Text("Answer 3"),
                  onPressed: answerQuestion,
                ),
              ],
            )));
  }
}