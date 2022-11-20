import 'package:flutter/material.dart';
import 'package:niothian/widget/nio_card.dart';

class Mesas extends StatefulWidget {
  const Mesas({Key? key}) : super(key: key);

  @override
  State<Mesas> createState() => _MesasState();
}

class _MesasState extends State<Mesas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: Colors.red[200],
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Center(child: Icon(Icons.table_bar, size: 100)),
                Text("Crie e compartilhe suas mesas!",
                    style: TextStyle(fontSize: 30))
              ]),
          // child: SingleChildScrollView(
          //   child: Column(
          //     children: [NioCard()],
          //   ),
          // ),
        ),
        floatingActionButton: const FloatingActionButton(
            onPressed: null,
            backgroundColor: Colors.red,
            child: Icon(Icons.add)));
  }
}
