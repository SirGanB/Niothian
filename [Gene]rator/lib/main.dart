import 'package:flutter/material.dart';
import 'package:niothian/widget/viewer/fichas.dart';
import 'package:niothian/widget/viewer/mesas.dart';
import 'package:niothian/widget/viewer/social.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('[Gene]rator'),
        bottom: TabBar(
            indicatorColor: Colors.yellow,
            labelColor: Colors.yellowAccent[100],
            controller: _tabController,
            tabs: const [
              Tab(child: Text("Mesas", style: TextStyle(color: Colors.red))),
              Tab(child: Text("Social", style: TextStyle(color: Colors.green))),
              Tab(child: Text("Fichas", style: TextStyle(color: Colors.blue))),
            ]),
      ),
      body: TabBarView(controller: _tabController, children: const [
        //Aba Mesas
        Mesas(),
        //Aba Social
        Social(),
        //Aba Fichas
        Fichas()
      ]),
    );
  }
}
