import 'question.dart';
class Quizbrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question(a:" The popular billionaire Fele ayodeji has huge a huge garage full of expensive cars and trucks  ?",  q: true ),
    Question(a: "he is a student of funaab ?" , q: false),
    Question(a: "Gbemisola is the name of  the billionaire/'s wife ?",q: true ) ,
    Question(a: "he is a politician ?" , q: false),
    Question(a: "he own a private jet ?", q: true),
    Question(a: "does the billionaire Engineer Felerealz has criminal records ?", q: false),
    Question(a: "madam gbemisola is so generous ?", q: true)
  ];
  void nextQuestion(){
    if(_questionNumber < _questionBank.length - 1){
      _questionNumber++;
    }
  }
  String getQuestionText(){
    return _questionBank[_questionNumber].questionText;
  }
  bool getAnswer(){
    return _questionBank[_questionNumber].questionAnswer;
  }
  bool isFinished(){
    if(_questionNumber >= _questionBank.length-1){
      return true;
    }
    else{
      return false;
    }
  }
  void reset(){
    _questionNumber = 0;
  }
}