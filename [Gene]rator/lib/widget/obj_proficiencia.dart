import 'package:flutter/material.dart';

class ObjProficiency extends StatefulWidget {
  const ObjProficiency({Key? key}) : super(key: key);

  @override
  State<ObjProficiency> createState() => _ObjProficiency();
}

class _ObjProficiency extends State<ObjProficiency> {
  bool on = false;
  int mod = 0;
  @override
  Widget build(BuildContext context) {
    String proficiency = "Salva Guarda";
    return Row(children: [
      Checkbox(
          //shape: const CircleBorder(),
          activeColor: Colors.purple,
          value: on,
          onChanged: (bool? value) {
            setState(() {
              on ? mod -= 2 : mod += 2;
              on = value!;
            });
          }),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Text(
          mod.toString(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ),
      Text(proficiency,
          style: const TextStyle(color: Colors.white, fontSize: 10)),
      const SizedBox(
        width: 30,
      )
    ]);
  }
}
