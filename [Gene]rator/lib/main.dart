import 'package:flutter/material.dart';
import 'package:niothian/widget/nio_character_profile.dart';
import 'package:niothian/widget/nio_stats.dart';

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

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
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
        bottom: TabBar(controller: _tabController, tabs: const [
          Tab(icon: Icon(Icons.people)),
          Tab(icon: Icon(Icons.beach_access_sharp)),
          Tab(icon: Icon(Icons.brightness_5_sharp)),
        ]),
      ),
      body: TabBarView(controller: _tabController, children: [
        Container(
          color: Colors.grey[500],
          child: Column(children: const [
            NioCharacterProfile(),
            Expanded(flex: 3, child: SizedBox())
          ]),
        ),
        const Center(child: Text("It's rainy here")),
        const Center(child: Text("It's sunny here")),
      ]),
    );
  }
}
