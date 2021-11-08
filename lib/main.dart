import 'package:flutter/material.dart';

import './question.dart';

void main(List<String> args) {
  runApp(MyApp());
}

//raccourci pour la méthode main: void main() => runApp(MyApp());

//Pour reformater le code: Maj + Alt + F

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First Cool App'),
        ),
        body: Column(
          children: [
            // Text(questions.first),
            Question(
              questions[_questionIndex],
            ),
            RaisedButton(
              child: Text('Answer1'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer2'),
              onPressed: () => print('Answer chosen!'),
            ),
            RaisedButton(
              child: Text('Answer3'),
              onPressed: () => {
                // instructions supplémentaires
                print('Answer chosen !')
              },
            ),
          ],
        ),
      ),
    );
  }
}
