import 'package:flutter/material.dart';

void main() {
  runApp(
    const Home(),
  );
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: const Center(
            child: Text("My Profile"),
          ),
        ),
        backgroundColor: Colors.indigoAccent,
        body: SafeArea(
          child: ListView(
            children: const <Widget>[
              CircleAvatar(
                backgroundColor: Colors.indigo,
                maxRadius: 200,
                minRadius: 50,
                child: Icon(
                  Icons.people,
                  size: 250,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 50,
                width: 250,
                child: Divider(
                  color: Colors.indigo,
                ),
              ),
              Center(
                child: Text(
                  "@Sir_GanB",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'PressStart2P',
                    letterSpacing: 1.5,
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Flutter Developer",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'CourierPrime',
                    letterSpacing: 5,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
                width: 250,
                child: Divider(
                  color: Colors.indigo,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    size: 30,
                    color: Colors.indigoAccent,
                  ),
                  title: Text("ganb.tads@gmail.com"),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: ListTile(
                  leading: Icon(
                    Icons.phone_android,
                    size: 30,
                    color: Colors.indigoAccent,
                  ),
                  title: Text("(44) 9 8443-0982"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
