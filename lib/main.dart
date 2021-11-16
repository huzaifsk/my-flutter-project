import 'package:flutter/material.dart';
/*

void main() {
  runApp(MyApp());
}

*/

//this code we are writing is only for one and exactlty one expression
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer to the question');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what\'s your favorite color?',
      'what\'s your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text('the question!'),
            RaisedButton(child: Text('Answer1'), onPressed: answerQuestion),
            RaisedButton(child: Text('Answer2'), onPressed: answerQuestion),
            RaisedButton(child: Text('Answer3'), onPressed: answerQuestion),
          ],
        ),
      ),
    );
  }
}
