import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> ques;
  final int idx;
  final Function func;

  Quiz(this.ques, this.idx, this.func);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          ques[idx]['qT'],
        ),
        ...(ques[idx]['ans'] as List<Map<String, Object>>).map((ans) {
          return Answer(() => func(ans['score']), ans['aT']);
        }).toList()
      ],
    );
  }
}
