import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Ball();
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: Center(
        child: Expanded(
          child: TextButton(
              onPressed: randomNumber,
              child: Image.asset('images/ball$ballNumber.png')),
        ),
      ),
    );
  }

  void randomNumber() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }
}
