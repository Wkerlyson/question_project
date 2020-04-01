import 'package:flutter/material.dart';
import 'package:question_project/question.dart';
import 'package:question_project/reply.dart';

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
      {
        'text': 'Qual a sua cor favorita?',
        'replies': ['Preto', 'Vermelho', 'Verde', 'Branco']
      },
      {
        'text': 'Qual é o seu animal favorito?',
        'replies': ['Coelho', 'Cobra', 'Elefante', 'Leão']
      },
      {
        'text': 'Qual é o seu instrutor favorito?',
        'replies': ['Maria', 'João', 'Leo', 'Pedro']
      }
    ];

    List<String> replies = questions[_selectedQuestion]['replies'];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_selectedQuestion]['text']),
            ...replies.map((t) => Reply(t, _reply)).toList()
          ],
        ),
      ),
    );
  }
}
