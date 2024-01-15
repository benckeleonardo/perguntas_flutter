import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String titulo;

  const Questao(this.titulo);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      child: Text(
        titulo,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
