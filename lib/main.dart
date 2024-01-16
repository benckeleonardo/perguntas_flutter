import 'package:flutter/material.dart';
import 'package:pergunta_app/questao.dart';
import 'package:pergunta_app/resposta.dart';

void main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  final _perguntas = [
    {
      'pergunta': 'Qual a sua cor favorita?',
      'respostas': ['Azul', 'Verde', 'Vermelho', 'Branco']
    },
    {
      'pergunta': 'Qual o seu animal favorito?',
      'respostas': ['Cachorro', 'Gato', 'Coelho']
    }
  ];

  int _perguntaAtual = 0;

  void _responder() {
    setState(() {
      _perguntaAtual++;
    });
    print('Pergunta atual: $_perguntaAtual');
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = _perguntas[_perguntaAtual].cast()['respostas'];
    List<Resposta> widgets = respostas
        .map((e) => Resposta(e, _responder))
        .toList();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Perguntas')),
        body: Column(
          children: [
            Questao(_perguntas[_perguntaAtual]['pergunta'].toString()),
            ...widgets
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
