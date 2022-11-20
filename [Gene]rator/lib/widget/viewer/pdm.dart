import 'package:flutter/material.dart';

class PDM extends StatefulWidget {
  const PDM({Key? key}) : super(key: key);

  @override
  State<PDM> createState() => _PDMState();
}

class _PDMState extends State<PDM> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue[200],
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Center(child: Icon(Icons.table_restaurant, size: 100)),
              Text("PDM", style: TextStyle(fontSize: 30))
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
