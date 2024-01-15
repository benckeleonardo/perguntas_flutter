import 'package:flutter/material.dart';
import 'package:pergunta_app/questao.dart';
import 'package:pergunta_app/resposta.dart';

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
            Questao(_perguntas[_perguntaAtual]),
            Resposta('Resposta 1', _responder),
            Resposta('Resposta 2', _responder),
            Resposta('Resposta 3', _responder),
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
