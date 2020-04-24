import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
      'Suka makan.',
      true,
    ),
    Question(
      'Suka kamu.',
      true,
    ),
    Question(
      'Suka dia.',
      false,
    ),
    Question(
      'Suka halu.',
      true,
    ),
    Question(
      'Suka mabuk.',
      false,
    ),
    Question(
      'Suka tidur.',
      true,
    ),
    Question(
      'Suka bolos.',
      false,
    ),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }

    print(_questionNumber);
    print(_questionBank.length);
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
