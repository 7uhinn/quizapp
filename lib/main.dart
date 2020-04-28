import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _quesidx = 0;
  var _points = 0;

  void _resetQuiz() {
    setState(() {
      _quesidx = 0;
      _points = 0;
    });
  }

  void _questionChange(p) {
    _points += p;
    setState(() => _quesidx++);
  }

  Widget build(BuildContext context) {
    var ques = [
      {
        'qT': 'What framework is this?',
        'ans': [
          {'aT': 'Flutter', 'score': 5},
          {'aT': 'React', 'score': 0},
          {'aT': 'Vue', 'score': 0},
          {'aT': 'Angular', 'score': 0}
        ]
      },
      {
        'qT': 'What new language is this?',
        'ans': [
          {'aT': 'JavaScript', 'score': 0},
          {'aT': 'Dart', 'score': 5},
          {'aT': 'C#', 'score': 0},
          {'aT': 'Java', 'score': 0}
        ]
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
          backgroundColor: Colors.red,
        ),
        body: _quesidx < ques.length
            ? Quiz(ques, _quesidx, _questionChange)
            : Result(_points,_resetQuiz),
      ),
    );
  }
}
