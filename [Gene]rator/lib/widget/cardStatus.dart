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
    return Container(
      color: Colors.blue,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.red,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      '6',
                      style: TextStyle(color: Colors.red[500], fontSize: 25),
                    ),
                    Text(
                      'sep',
                      style: TextStyle(color: Colors.red[500]),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: 50,
            height: 50,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
