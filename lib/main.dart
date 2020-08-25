import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int nLeft = 1, nRight = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: [
        Expanded(
          child: FlatButton(
            onPressed: () {
              rollDice();
            },
            child: Image.asset("images/dice$nLeft.png"),
          ),
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {
              rollDice();
            },
            child: Image.asset("images/dice$nRight.png"),
          ),
        ),
      ]),
    );
  }

  void rollDice() {
    setState(() {
      nLeft = Random().nextInt(6) + 1;
      nRight = Random().nextInt(6) + 1;
    });
  }
}
