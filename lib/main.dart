import 'package:flutter/material.dart';

main() => runApp(QuestionApp());

class QuestionApp extends StatefulWidget {
  @override
  _QuestionAppState createState() => _QuestionAppState();
}

class _QuestionAppState extends State<QuestionApp> {
  var selectedQuestion = 0;

  void reply() {
    setState(() {
      selectedQuestion++;
    });
    print(selectedQuestion);
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
            Text(questions[selectedQuestion]),
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: reply,
            ),
            RaisedButton(
              child: Text('Resposta 2'),
              onPressed: reply,
            ),
            RaisedButton(
              child: Text('Resposta 3'),
              onPressed: reply,
            ),
          ],
        ),
      ),
    );
  }
}
