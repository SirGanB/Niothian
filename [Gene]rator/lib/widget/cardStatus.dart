import 'package:flutter/material.dart';

class cardStatus extends StatelessWidget {
  const cardStatus(
      {Key? key,
      required this.atributos,
      required this.modificador,
      required this.valor})
      : super(key: key);

  final String atributos;
  final int modificador;
  final int valor;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(child: Text(atributos)),
          Container(child: Text(modificador.toString())),
          Container(child: Text(valor.toString())),
        ],
      ),
    );
  }
}
