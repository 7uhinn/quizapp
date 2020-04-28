import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int points;
  final Function reset;

  Result(this.points, this.reset);

  String get finText {
    if (points == 0) {
      return ('You scored 0/10, That is pretty bad.');
    } else if (points == 5) {
      return ('You scored 5/10, Not that bad.');
    } else {
      return ('You scored 10/10, Good job!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            finText,
            style: TextStyle(
              fontSize: 30,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        FlatButton(
          onPressed: reset,
          child: Text(
            'Restart!',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
