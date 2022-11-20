import 'package:flutter/material.dart';

class PDJ extends StatefulWidget {
  const PDJ({Key? key}) : super(key: key);

  @override
  State<PDJ> createState() => _PDJState();
}

class _PDJState extends State<PDJ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue[200],
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Center(child: Icon(Icons.person_pin_outlined, size: 100)),
              Text("PDJ", style: TextStyle(fontSize: 30))
            ]),
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.blue,
        child: Icon(Icons.add),
      ),
    );
  }
}
