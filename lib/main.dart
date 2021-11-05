import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

//raccourci pour la méthode main: void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Text('Hello'),);
  }
}
