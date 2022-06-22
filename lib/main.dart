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
  int rightnumber() {
    int rightdice = 2;
    rightdice = Random().nextInt(6) + 1;
    return rightdice;
  }

  int leftnumber() {
    int leftdice = 2;
    leftdice = Random().nextInt(6) + 1;
    return leftdice;
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
                    rightdice = Random().nextInt(6) + 1;
                    leftdice = Random().nextInt(6) + 1;
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
                    leftdice = rightnumber();
                    rightdice = leftnumber();
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
