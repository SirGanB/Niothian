import 'package:flutter/material.dart';
import 'package:niothian/widget/nio_block_stats.dart';

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
                fontSize: 20,
              ),
            ),
          ),
          backgroundColor: Colors.grey,
        ),
        backgroundColor: Colors.grey,
        body: const NioBlockStats(),
      ),
    );
  }
}
