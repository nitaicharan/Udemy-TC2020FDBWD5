import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue.shade900,
          body: MagicBoll(),
          appBar: AppBar(
            title: Text('Ask me anything'),
          ),
        ),
      ),
    );

class MagicBoll extends StatefulWidget {
  _MagicBollState createState() => _MagicBollState();
}

class _MagicBollState extends State<MagicBoll> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/ball$number.png'),
              onPressed: () => setState(() => number = Random().nextInt(5) + 1),
            ),
          ),
        ],
      ),
    );
  }
}
