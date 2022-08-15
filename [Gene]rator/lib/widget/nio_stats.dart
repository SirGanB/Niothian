import 'package:flutter/material.dart';

class NioStats extends StatefulWidget {
  const NioStats({Key? key}) : super(key: key);

  @override
  State<NioStats> createState() => _NioStats();
}

class _NioStats extends State<NioStats> {
  final TextEditingController _textEditingController = TextEditingController();
  String atributo = "Inteligência";
  int valor = 6;

  @override
  Widget build(BuildContext context) {
    String modificador = ((valor - 10) ~/ 2).toString();
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              color: Colors.grey[400],
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.grey[500],
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text(
                          atributo,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontFamily: 'CourierPrime',
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          (valor > 10 ? "+$modificador" : modificador),
                          style: const TextStyle(
                            color: Colors.white,
                            fontFamily: 'CourierPrime',
                            fontSize: 40,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            color: Colors.grey[700],
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                height: 30,
                width: 40,
                color: Colors.grey[800],
                child: TextField(
                  controller: _textEditingController,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'CourierPrime',
                    fontSize: 30,
                  ),
                  onChanged: (fodase) {
                    setState(() {
                      valor = int.parse(_textEditingController.text);
                    });
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
