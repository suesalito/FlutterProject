import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink.shade100,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.pink,
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
  int leftDiceNo = 5;
  int rightDiceNo = 5;
  //Random random = new Random();

  void genDartRandom() {
    leftDiceNo = Random().nextInt(6) + 1;
    rightDiceNo = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 9,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  // leftDiceNo = Random().nextInt(6) + 1;
                  // rightDiceNo = Random().nextInt(6) + 1;
                  genDartRandom();
                });
              },
              child: Image.asset('images/dice$leftDiceNo.png'),
            ),
          ),
          //Expanded(child: SizedBox(), flex: 1),
          Expanded(
            flex: 9,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  genDartRandom();
                });
              },
              child: Image.asset('images/dice$rightDiceNo.png'),
            ),
          ),
        ],
      ),
    );
  }
}
// class DicePage extends StatelessWidget {

// }
