// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _quesIndex = 0;

  void _func() {
    setState(() {
      _quesIndex = _quesIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var ques = [
      "What is your favorite color?",
      "What is your favorite animal?"
    ];

    if (ques.length == _quesIndex) {
      _quesIndex = 0;
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: Column(
          children: [
            Text(ques[_quesIndex]),
            ElevatedButton(
              child: const Text("Red"),
              onPressed: () {
                print("invoked red");
              },
            ),
            ElevatedButton(
                child: const Text("Black"),
                onPressed: () => print("invoked black")),
            ElevatedButton(
              child: const Text("Next Question"),
              onPressed: _func,
            ),
          ],
        ),
      ),
    );
  }
}
