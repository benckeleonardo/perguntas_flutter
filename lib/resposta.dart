import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String _texto;

  const Resposta(this._texto);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: null,
      child: Text(_texto),
    );
  }
}
