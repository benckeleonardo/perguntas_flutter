import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String _texto;
  final void Function() quandoSelecionado;

  const Resposta(this._texto, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
        onPressed: quandoSelecionado,
        child: Text(
          _texto,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
