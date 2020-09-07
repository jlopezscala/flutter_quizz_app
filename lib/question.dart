import 'package:flutter/cupertino.dart';


class Question extends StatelessWidget {

  // Final is added here to mark as unmuttable after built
  final String _questionText;

  Question(this._questionText);

  @override
  Widget build(BuildContext context) {
    return Text(_questionText);
  }
}
