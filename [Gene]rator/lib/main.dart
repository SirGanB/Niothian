import 'package:flutter/material.dart';
import 'package:niothian/widget/cardStatus.dart';

void main() {
  runApp(const MaterialApp(
    home: MyPage(),
  ));
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Center(
          child: Text("[Gene]rator"),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('img/welcome.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
