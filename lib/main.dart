import 'package:flutter/material.dart';

void main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  int _perguntaAtual = 0;

  void _responder() {
    setState(() {
      _perguntaAtual++;
    });
    print('Pergunta atual: $_perguntaAtual');
  }

  @override
  Widget build(BuildContext context) {
    final _perguntas = [
      'Qual a sua cor favorita?',
      'Qual o seu animal favorito?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Perguntas')),
        body: Column(
          children: [
            Text(_perguntas[_perguntaAtual]),
            ElevatedButton(onPressed: _responder, child: Text('Resposta 1')),
            ElevatedButton(onPressed: _responder, child: Text('Resposta 2')),
            ElevatedButton(onPressed: _responder, child: Text('Resposta 3')),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
