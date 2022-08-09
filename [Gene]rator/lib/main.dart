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
          backgroundColor: Colors.black,
          title: const Text("Calculadora"),
        ),
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
              color: Colors.black,
              height: 120,
              child: const Center(
                child: Text(
                  "128√e980",
                  style: TextStyle(
                      fontFamily: "PressStart2P",
                      color: Colors.white,
                      fontSize: 30),
                ),
              ),
            ),
            Column(
              children: [
                const Divider(
                  height: 20,
                  color: Colors.orange,
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton(
                      backgroundColor: Colors.blueGrey[900],
                      onPressed: null,
                      child: const Text(
                        "AC",
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.blueGrey[900],
                      onPressed: null,
                      child: const Icon(
                        Icons.backspace,
                        color: Colors.orange,
                      ),
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.blueGrey[900],
                      onPressed: null,
                      child: const Text(
                        "%",
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.blueGrey[900],
                      onPressed: null,
                      child: const Text(
                        "/",
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton(
                      backgroundColor: Colors.blueGrey[900],
                      onPressed: null,
                      child: const Text(
                        "7",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                        ),
                      ),
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.blueGrey[900],
                      onPressed: null,
                      child: const Text(
                        "8",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                        ),
                      ),
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.blueGrey[900],
                      onPressed: null,
                      child: const Text(
                        "9",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                        ),
                      ),
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.blueGrey[900],
                      onPressed: null,
                      child: const Text(
                        "x",
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton(
                      backgroundColor: Colors.blueGrey[900],
                      onPressed: null,
                      child: const Text(
                        "4",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                        ),
                      ),
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.blueGrey[900],
                      onPressed: null,
                      child: const Text(
                        "5",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                        ),
                      ),
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.blueGrey[900],
                      onPressed: null,
                      child: const Text(
                        "6",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                        ),
                      ),
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.blueGrey[900],
                      onPressed: null,
                      child: const Text(
                        "-",
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton(
                      backgroundColor: Colors.blueGrey[900],
                      onPressed: null,
                      child: const Text(
                        "1",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                        ),
                      ),
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.blueGrey[900],
                      onPressed: null,
                      child: const Text(
                        "2",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                        ),
                      ),
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.blueGrey[900],
                      onPressed: null,
                      child: const Text(
                        "3",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                        ),
                      ),
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.blueGrey[900],
                      onPressed: null,
                      child: const Text(
                        "+",
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton(
                      backgroundColor: Colors.blueGrey[900],
                      onPressed: null,
                      child: const Icon(
                        Icons.change_circle,
                        size: 30,
                        color: Colors.orange,
                      ),
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.blueGrey[900],
                      onPressed: null,
                      child: const Text(
                        "0",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.blueGrey[900],
                      onPressed: null,
                      child: const Text(
                        ",",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    const FloatingActionButton(
                      backgroundColor: Colors.orange,
                      onPressed: null,
                      child: Text(
                        "=",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
