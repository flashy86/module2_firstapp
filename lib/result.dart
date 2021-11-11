// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get ResultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 15) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 19) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 25) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            ResultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            child: Text(
              'Restart Quiz!',
            ),
            textColor: Colors.blueAccent,
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
