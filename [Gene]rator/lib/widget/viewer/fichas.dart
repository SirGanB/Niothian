import 'package:flutter/material.dart';
import 'package:niothian/widget/viewer/pdj.dart';
import 'package:niothian/widget/viewer/pdm.dart';

class Fichas extends StatefulWidget {
  const Fichas({Key? key}) : super(key: key);

  @override
  State<Fichas> createState() => _SocialState();
}

class _SocialState extends State<Fichas> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[PDJ(), PDM()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_sharp),
            label: 'Personagem do Jogador',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.table_bar),
            label: 'Personagem do Narrador',
            backgroundColor: Colors.black,
          ),
        ],
        type: BottomNavigationBarType.shifting,
        elevation: 10,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.red,
        onTap: _onItemTapped,
      ),
    );
  }
}
