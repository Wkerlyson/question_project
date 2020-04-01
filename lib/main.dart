import 'package:flutter/material.dart';
import 'package:question_project/question.dart';
import 'package:question_project/reply.dart';

main() => runApp(QuestionApp());

class QuestionApp extends StatefulWidget {
  @override
  _QuestionAppState createState() => _QuestionAppState();
}

class _QuestionAppState extends State<QuestionApp> {
  final _questions = const [
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

  var _selectedQuestion = 0;

  void _reply() {
    if (haveQuestionSelected) {
      setState(() {
        _selectedQuestion++;
      });
    }
  }

  bool get haveQuestionSelected {
    return _selectedQuestion < _questions.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> replies =
        haveQuestionSelected ? _questions[_selectedQuestion]['replies'] : null;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: haveQuestionSelected
            ? Column(
                children: <Widget>[
                  Question(_questions[_selectedQuestion]['text']),
                  ...replies.map((t) => Reply(t, _reply)).toList()
                ],
              )
            : Center(
                child: Text(
                  'Parabéns!',
                  style: TextStyle(fontSize: 28),
                ),
              ),
      ),
    );
  }
}
