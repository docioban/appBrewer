import 'package:flutter/material.dart';
import 'package:quizz/question.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class QuizBrain {
  int questionIndex = 0;

  List<Question> questions = [
    Question('You can lead a cow down stairs but not un stairs', false),
    Question('Aprozximately one quarter of human bones are in the feet', true),
    Question('a slug\'s blood is green', true),
    Question(
        'The l`oundest sound produced by any animal is 188 decibels. That animal is the African Elephand.',
        false),
  ];

  nextQustion(BuildContext context) {
    if (questionIndex + 1 >= questions.length) {
      questionIndex = 0;
      Alert(
          context: context,
          title: 'Is Finish',
          desc: 'Do you want to repeat?',
          buttons: [
            DialogButton(
              child: Text('Yes'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            DialogButton(
              child: Text('No'),
              onPressed: () {
                Navigator.canPop(context);
              },
            ),
          ]).show();
    } else {
      questionIndex++;
    }
  }

  getQuestion() {
    return questions[questionIndex].questionText;
  }

  getAnswer() {
    return questions[questionIndex].questionAnswer;
  }
}
