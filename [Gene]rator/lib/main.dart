import 'package:flutter/material.dart';
import 'package:niothian/widget/nio_stats.dart';

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
  String image = 'img/characterImage.jpg';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "[Gene]rator",
              style: TextStyle(
                fontFamily: 'PressStart2P',
                fontSize: 20,
              ),
            ),
          ),
          backgroundColor: Colors.indigo[700],
        ),
        backgroundColor: Colors.indigo,
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              color: Colors.blue,
              child: Row(children: [
                Container(
                  color: Colors.blue,
                  height: 250,
                  child: Stack(children: [
                    Image.asset(image),
                    Image.asset('img/profile.png', color: Colors.black)
                  ]),
                ),
              ]),
            ),
            Row(children: [
              Column(children: [
                NioStats(atributo: "Força"),
                NioStats(atributo: "Destreza"),
                NioStats(atributo: "Força"),
              ]),
              Column(children: [
                NioStats(atributo: "Força"),
                NioStats(atributo: "Destreza"),
                NioStats(atributo: "Força"),
              ]),
            ]),
          ]),
        ),
      ),
    );
  }
}
