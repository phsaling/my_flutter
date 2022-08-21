import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 15, 127, 219),
        appBar: AppBar(
          title: Center(
            child: Text('Ask Me Anything'),
          ),
          backgroundColor: Color.fromARGB(255, 9, 62, 105),
        ),
        body: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  BallState createState() => BallState();
}

class BallState extends State<Ball> {
  @override
  int ballNumber = 1;

  void changeBallNumber() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          changeBallNumber();
          print('The Ball Number is:$ballNumber.');
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
