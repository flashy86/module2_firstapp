// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import './result.dart';
import './quiz.dart';

//raccourci pour la méthode main: void main() => runApp(MyApp());
void main(List<String> args) {
  runApp(MyApp());
}

//Pour reformater le code: Maj + Alt + F

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'myscore': 8},
        {'text': 'Red', 'score': 6},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
        {'text': 'Pink', 'score': 2}
      ]
    }, // Cette syntaxe permet d'avoir dans la même map la question et les réponses possibles
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
        {'text': 'Cat', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favorite city?',
      'answers': [
        {'text': 'Paris', 'score': 1},
        {'text': 'Londres', 'score': 3},
        {'text': 'Tokyo', 'score': 5},
        {'text': 'New York', 'score': 4},
        {'text': 'Berlin', 'score': 6}
      ]
    },
    {
      'questionText': 'What\'s your favorite food?',
      'answers': [
        {'text': 'Burger', 'score': 5},
        {'text': 'Pizza', 'score': 4},
        {'text': 'Pasta', 'score': 2},
        {'text': 'French food', 'score': 1},
        {'text': 'Mexican food', 'score': 3}
      ]
    },
    {
      'questionText': 'What\'s your favorite book?',
      'answers': [
        {'text': 'Fifty shades of grey', 'score': 11},
        {'text': 'Madame Bovary', 'score': 8},
        {'text': 'Anna Karerine', 'score': 9},
        {'text': 'Bel-Ami', 'score': 7},
        {'text': 'Jane Austeen', 'score': 1},
      ]
    },
    {
      'questionText': 'What\'s your favorite season?',
      'answers': [
        {'text': 'Winter', 'score': 1},
        {'text': 'Spring', 'score': 3},
        {'text': 'Summer', 'score': 5},
        {'text': 'Autumn', 'score': 3},
      ]
    },
    {
      'questionText': 'What\'s your favorite OS Computer?',
      'answers': [
        {'text': 'Windows', 'score': 1},
        {'text': 'MacOS', 'score': 1},
        {'text': 'Linux', 'score': 1},
        {'text': 'Solaris', 'score': 1},
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
    //_totalscore = _totalscore + score; correspond à la syntaxe raccourci en dessous
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      //la condition rend directement true si c'est vrai, sinon elle rend false.
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First Cool App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
