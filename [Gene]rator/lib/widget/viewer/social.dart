import 'package:flutter/material.dart';

class Social extends StatefulWidget {
  const Social({Key? key}) : super(key: key);

  @override
  State<Social> createState() => _SocialState();
}

class _SocialState extends State<Social> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green[200],
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Center(child: Icon(Icons.quick_contacts_mail, size: 100)),
              Text("Converse com seus amigos!", style: TextStyle(fontSize: 30))
            ]),
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.green,
        child: Icon(Icons.add),
      ),
    );
  }
}
