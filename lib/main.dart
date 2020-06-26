import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Double Diece'),
          backgroundColor: Colors.redAccent,
        ),
        body: DoubleDiece(),
      ),
    );
  }
}

class DoubleDiece extends StatefulWidget {
  @override
  _DoubleDieceState createState() => _DoubleDieceState();
}

class _DoubleDieceState extends State<DoubleDiece> {
  int leftdice = 1;
  int rightdice = 1;

  void diceChange() {
    setState(() {
      leftdice = Random().nextInt(5) + 1;
      rightdice = Random().nextInt(5) + 1;
      print(leftdice);
      print(rightdice);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              child: FlatButton(
                child: Image.asset('images/dice$leftdice.png'),
                onPressed: () {
                  diceChange();
                },
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: FlatButton(
                child: Image.asset('images/dice$rightdice.png'),
                onPressed: () {
                  diceChange();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
