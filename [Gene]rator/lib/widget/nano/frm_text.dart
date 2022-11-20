import 'package:flutter/material.dart';

class TextForm extends StatefulWidget {
  TextForm({Key? key, this.titulo}) : super(key: key);

  String? titulo;

  String get getTitulo {
    return titulo!;
  }

  set setName(String titulo) {
    titulo = this.titulo!;
  }

  @override
  State<TextForm> createState() => _TextFormState();
}

class _TextFormState extends State<TextForm> {
  late TextForm textForm;
  @override
  void initState() {
    textForm = TextForm(titulo: widget.titulo);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          counterText: '',
          labelText: textForm.getTitulo,
        ),
        maxLength: 15,
        style: const TextStyle(),
      ),
    );
  }
}
