import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          title: Center(
            child: Text(
              "Dice",
              style: TextStyle(color: Colors.black87),
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int firstDice = 1;
  int secondDice = 1;
  void random() {
    setState(() {
      firstDice = Random().nextInt(6) + 1; //range between 1-6
      secondDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                random();
              },
              child: Image.asset('images/dice$firstDice.png'),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                random();
              },
              child: Image.asset('images/dice$secondDice.png'),
            ),
          ),
        ],
      ),
    );
  }
}

// class DicePage extends StatelessWidget {}
