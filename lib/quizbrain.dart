import 'package:quizller/question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question(q: 'The unicorn is the national animal of Scotland ?', a: true),
    Question(q: 'An octopus has three hearts ?', a: true),
    Question(q: 'There are five different blood groups ?', a: false),
    Question(q: 'Australia is wider than the moon ? ', a: true),
    Question(q: 'Final question - Fish cannot blink ?', a: true),
  ];

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  bool isFinished() {
    return _questionNumber >= _questionBank.length - 1;
  }

  void reset() {
    _questionNumber = 0;
  }
}
