// ignore_for_file: use_key_in_widget_constructors, avoid_print
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text(
            'Dicee',
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdice = 1;
  int rightdice = 1;
  int count = 0;
  nunmberchange() {
    setState(() {
      count = count + 1;
      leftdice = Random().nextInt(6) + 1;
      rightdice = Random().nextInt(6) + 1;
      print(count);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    nunmberchange();
                  });
                },
                child: Image.asset('images/dice$rightdice.png'),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    nunmberchange();
                  });
                },
                child: Image.asset('images/dice$leftdice.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
