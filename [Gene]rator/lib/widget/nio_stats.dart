import 'package:flutter/material.dart';
import 'package:niothian/widget/obj_proficiencia.dart';

class NioStats extends StatefulWidget {
  NioStats({Key? key, this.atributo}) : super(key: key);
  String? atributo;

  String get getAtributo {
    return atributo!;
  }

  set setName(String atributo) {
    atributo = this.atributo!;
  }

  @override
  State<NioStats> createState() => _NioStats();
}

class _NioStats extends State<NioStats> {
  //Definição de Variáveis
  int valor = 10;
  late NioStats nioStats;
  @override
  void initState() {
    nioStats = NioStats(atributo: widget.atributo);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String modificador = ((valor - 10) ~/ 2).toString();
    return Row(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Stack(alignment: AlignmentDirectional.bottomCenter, children: [
          SizedBox(
            height: 160,
            child: Stack(alignment: AlignmentDirectional.center, children: [
              SizedBox(
                height: 80,
                child: Column(children: [
                  //nome do atributo
                  Text(
                    nioStats.getAtributo,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  //modificador
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      (valor > 10 ? "+$modificador" : modificador),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ]),
              ),
              //moldura
              Image.asset(
                'img/square.png',
                color: Colors.white,
                height: 120,
              ),
            ]),
          ),
          SizedBox(
            height: 100,
            width: 50,
            child: Stack(alignment: AlignmentDirectional.center, children: [
              Container(height: 12, width: 50, color: Colors.indigo),
              Padding(
                padding: const EdgeInsets.only(bottom: 3, left: 3),
                child: TextField(
                    style: const TextStyle(color: Colors.white, fontSize: 15),
                    textAlign: TextAlign.center,
                    onChanged: (texto) {
                      setState(() {
                        valor = int.parse(texto);
                      });
                    }),
              ),
              Image.asset('img/circle.png', color: Colors.white),
            ]),
          ),
        ]),
      ),
      Column(children: const [ObjProficiency()])
    ]);
  }
}
