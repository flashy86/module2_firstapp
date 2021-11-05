import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

//raccourci pour la méthode main: void main() => runApp(MyApp());

//Pour reformater le code: Maj + Alt + F

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First Cool App'),
        ),
        body: Text('This is my default text!'),
      ),
    );
  }
}
