// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

import './questions.dart';
import './answers.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _quesIndex = 0;

  void _ansQfinal() {
    setState(() {
      _quesIndex = _quesIndex + 1;
    });
    print(_quesIndex);
  }

  @override
  Widget build(BuildContext context) {
    const data = [
      {
        "Q": "What is your favorite color?",
        "A": ['Blue', 'Red', 'Black', 'Yellow']
      },
      {
        "Q": "What is your favorite animal?",
        "A": ['Dogs', 'Sharks', 'Lion', 'Horse']
      },
    ];

    if (data.length == _quesIndex) {
      _quesIndex = 0;
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: Column(
          children: [
            Questions(
              data[_quesIndex]['Q'] as String,
            ),
            ...(data[_quesIndex]['A'] as List<String>).map((ans) {
              return Answers(_ansQfinal, ans);
            }).toList()
          ],
        ),
      ),
    );
  }
}
