import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

/*

void main() {
  runApp(MyApp());
}

*/

//this code we are writing is only for one and exactlty one expression
void main() => runApp(MyApp());

@override
class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    //TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    //map

    {
      'QuestionText': 'what\'s your fav colour?',
      'answers': [
        {'text': 'black', 'score': 10},
        {'text': 'red', 'score': 5},
        {'text': 'blue', 'score': 3},
        {'text': 'green', 'score': 1}
      ]
    },
    {
      'QuestionText': 'what\'s your fav animal?',
      'answers': [
        {'text': 'cat', 'score': 10},
        {'text': 'dog', 'score': 1},
        {'text': 'horse', 'score': 5},
        {'text': 'bear', 'score': 8}
      ]
    },
    {
      'QuestionText': 'who\'s your fav man?',
      'answers': [
        {'text': 'jho', 'score': 1},
        {'text': 'huz', 'score': 2},
        {'text': 'ann', 'score': 3},
        {'text': 'faw', 'score': 4}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;

    _totalScore = _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);

    if (_questionIndex < _questions.length) {
      print('we have more questions!');
    } else {
      print('no more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),

        /*      RaisedButton(
                child: Text('Answer3'),
                onPressed: () {
                  //...
                  print('Answer 3 chosen');
                }),
                */
      ),
    );
  }
}
