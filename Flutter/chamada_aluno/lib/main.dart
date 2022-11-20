import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Chamada Aluno'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var alunos = ['Alexandro', 'Matheus', 'Gustavo', 'Gordo', 'Isabela'];
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        //child: criaLista(alunos)
        child: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance.collection("aluno").snapshots(),
            builder: (ctx, snap) {
              switch (snap.connectionState) {
                case ConnectionState.none:
                case ConnectionState.waiting:
                  return const Text("Espere");
                  break;
                default:
                  if (snap.hasError) return const Text("#Error404");
                  if (snap.hasData) return Text("Nenhum Aluno Encontrado!");
                  List<String> a =
                      snap.data!.docs.map((e) => e.toString()).toList();
                  return criaLista(a);
              }
              return Container();
            }),
      ),
    );
  }

  ListView criaLista(List<String> alunos) {
    return ListView.builder(
        itemCount: alunos.length,
        itemBuilder: ((context, index) {
          return ListTile(
            tileColor: Colors.blue,
            title: Text(alunos[index]),
            leading: Container(
              color: Colors.pink,
              height: 50,
              width: 50,
              child: const Icon(Icons.home),
            ),
            trailing: Container(
              color: Colors.yellow,
              height: 50,
              width: 50,
              child: const Icon(Icons.phone),
            ),
            subtitle: const Text('Última Mensagem'),
          );
        }));
  }
}
