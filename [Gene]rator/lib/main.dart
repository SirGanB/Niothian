import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const Home(),
  );
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int nmbDiceL = 1;
  int nmbDiceR = 1;

  rowboth() {
    nmbDiceL = Random().nextInt(6) + 1;
    nmbDiceR = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: const Center(
            child: Text(
              "Dice [Gene]rator",
              style: TextStyle(fontFamily: 'PressStart2P'),
            ),
          ),
        ),
        backgroundColor: Colors.orange,
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(
                      () {
                        nmbDiceL = Random().nextInt(6) + 1;
                      },
                    );
                  },
                  child: Image.asset('assets/dice/dice$nmbDiceL.png'),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        rowboth();
                      });
                    },
                    child: const Icon(
                      Icons.change_circle,
                      size: 100,
                      color: Colors.deepOrange,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      nmbDiceR = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('assets/dice/dice$nmbDiceR.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
