import 'package:flutter/material.dart';
import 'package:question_project/question.dart';

main() => runApp(QuestionApp());

class QuestionApp extends StatefulWidget {
  @override
  _QuestionAppState createState() => _QuestionAppState();
}

class _QuestionAppState extends State<QuestionApp> {
  var _selectedQuestion = 0;

  void _reply() {
    setState(() {
      _selectedQuestion++;
    });
    print(_selectedQuestion);
  }

  @override
  Widget build(BuildContext context) {
    final questions = [
      'Qual a sua cor favorita?',
      'Qual é o seu animal favorito:'
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_selectedQuestion]),
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: _reply,
            ),
            RaisedButton(
              child: Text('Resposta 2'),
              onPressed: _reply,
            ),
            RaisedButton(
              child: Text('Resposta 3'),
              onPressed: _reply,
            ),
          ],
        ),
      ),
    );
  }
}
