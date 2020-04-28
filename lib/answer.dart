import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function func;
  final String ans;

  Answer(this.func, this.ans);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        color: Colors.red,
        child: Text(
          ans,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        onPressed: () => func(),
      ),
    );
  }
}
