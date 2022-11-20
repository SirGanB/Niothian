import 'package:flutter/material.dart';

class CircularText extends StatefulWidget {
  CircularText({Key? key, this.title}) : super(key: key);

  String? title;

  String get getTitle {
    return title!;
  }

  set setName(String title) {
    title = this.title!;
  }

  @override
  State<CircularText> createState() => _CircularText();
}

class _CircularText extends State<CircularText> {
  late CircularText circularText;
  @override
  void initState() {
    circularText = CircularText(title: widget.title);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 40,
        child: TextField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            counterText: '',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0),
            ),
            labelText: circularText.getTitle,
            prefixIcon: const Icon(Icons.heart_broken, size: 15),
          ),
          maxLength: 4,
          maxLines: 1,
          style: const TextStyle(fontSize: 14),
        ),
      ),
    );
  }
}
