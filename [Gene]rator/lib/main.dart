import 'package:flutter/material.dart';
import 'package:niothian/widget/nio_character_profile.dart';

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
                fontSize: 16,
              ),
            ),
          ),
          backgroundColor: Colors.green,
        ),
        backgroundColor: Colors.green[300],
        body: SafeArea(
          child: Column(children: const [
            NioCharacterProfile(),
            Expanded(flex: 3, child: SizedBox()),
          ]),
        ),
      ),
    );
  }
}
