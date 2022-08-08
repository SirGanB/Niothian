import 'dart:html';

import 'package:flutter/material.dart';
import 'package:niothian/widget/cardStatus.dart';

void main() {
  runApp(
    const Home(),
  );
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey.shade900,
          title: Center(
            child: Text("[Gene]rator"),
          ),
          actions: <Widget>[
            TextButton(
              style: style,
              onPressed: () {},
              child: const Text('Juntar-se'),
            ),
            TextButton(
              style: style,
              onPressed: () {},
              child: const Text('Sair'),
            )
          ],
        ),
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Row(
            children: [
              Container(
                width: 200,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                color: Colors.pink,
                child: Center(
                  child: Text("Sexualidade"),
                ),
              ),
              Container(
                width: 200,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                color: Colors.red,
                child: Center(
                  child: Text("Vida"),
                ),
              ),
              Container(
                width: 200,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                color: Colors.orange,
                child: Center(
                  child: Text("Cura"),
                ),
              ),
              Container(
                width: 200,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                color: Colors.yellow,
                child: Center(
                  child: Text("Luz do Sol"),
                ),
              ),
              Container(
                width: 200,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                color: Colors.green,
                child: Center(
                  child: Text("Natureza"),
                ),
              ),
              Container(
                width: 200,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                color: Colors.blue,
                child: Center(
                  child: Text("Serenidade e Harmonia"),
                ),
              ),
              Container(
                width: 200,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                color: Colors.purple,
                child: Center(
                  child: Text("Espírito"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
