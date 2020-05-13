import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'question.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];

   List<Question> questionBank = [

  Question(a:"billionaire fele ayodeji has 12cars ?",  q: true ), // a object created from the constructor.
  Question(a: 'gbemisola is the madam ?',q: true ) ,// a object created from the constructor.
  Question(a: "he is not kind ?" , q: false) // a object created from the constructor.

   ];


  int questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Text(
                questionBank[questionNumber].questionText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: FlatButton(
              color: Colors.green,
              child: Text(
                "True",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              onPressed: (){
                bool correctAns = questionBank[questionNumber].questionAnswer;
                if(correctAns == true){
                  print("user got it right");
                }
                else{
                  print("you got it wrong");
                }
                setState(() {
                  questionNumber++;
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                "false",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              onPressed: (){ 
                
                bool correctAns = questionBank[questionNumber].questionAnswer;
                if(correctAns == false) {
                  print("you are right");
                }
                else{
                  print("wrong");
                }
                setState(() {
                  questionNumber++;
                });
              },
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }
}
