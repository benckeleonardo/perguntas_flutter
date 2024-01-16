import 'package:flutter/material.dart';
import 'package:pergunta_app/questao.dart';
import 'package:pergunta_app/resposta.dart';
import 'package:pergunta_app/resultado.dart';

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

  bool get temPerguntaSelecionada {
    return _perguntaAtual < _perguntas.length;
  }

  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaAtual++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    print('Pergunta atual: $_perguntaAtual');

    List<String> respostas;
    List<Resposta> widgets = [];

    if (temPerguntaSelecionada) {
      respostas = _perguntas[_perguntaAtual].cast()['respostas'];
      widgets = respostas.map((e) => Resposta(e, _responder)).toList();
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Perguntas')),
        body: temPerguntaSelecionada
          ? Column(
          children: [
            Questao(_perguntas[_perguntaAtual]['pergunta'].toString()),
            ...widgets
          ],
        )
        : Resultado(),
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
