import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  final List<Map<String, Object>> _questions = [
    {
      "questionText": "What\'s Your favurite color?",
      "answer": ['Black', 'Bleu', 'Orange', 'Green']
    },
    {
      "questionText": "What\'s Your favurite Animal?",
      "answer": ['Cat', 'Sheep', 'Dog', 'Wolf']
    },
    {
      "questionText": "What\'s Your favurite language?",
      "answer": ['En', 'Ar', 'Fr', 'Al']
    },
    {
      "questionText": "What\'s Your favurite Country?",
      "answer": ['Algeria', 'USA', 'France', 'England']
    }
  ];

  void anserQuestion() {
    setState(() {
      _questionIndex += 1;
    });

    print(_questionIndex);
    print("answer Chosen !");
  }

  void restart() {
    setState(() {
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Quiz App"),
          ),
          body: Container(
              //width: double.infinity, // in order to it takes all widh screen
              child: _questionIndex < _questions.length
                  ? Quiz(_questions, _questionIndex, anserQuestion)
                  : Result(restart)),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.arrow_back),
            onPressed: () {
              setState(() {
                if (_questionIndex > 0) {
                  _questionIndex -= 1;
                }
              });
            },
          ),
        ));
  }
}
