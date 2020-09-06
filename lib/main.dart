import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  // This is a Stateful Widget, createState method needs to be overwritten
  // The widget needs to go along a State child class sort of '{widget_name}State'
  // In order to simply change the state, setState((), {a function, or steps}) needs
  // To be called and the Widget will redraw itself.

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}
// Underscore indicates private (code style)
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
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
                Text(questions[_questionIndex]),
                RaisedButton(
                  child: Text("Answer 1"),
                  onPressed: _answerQuestion,
                ),
                RaisedButton(
                  child: Text("Answer 2"),
                  onPressed: _answerQuestion,
                ),
                RaisedButton(
                  child: Text("Answer 3"),
                  onPressed: _answerQuestion,
                ),
              ],
            )));
  }
}
