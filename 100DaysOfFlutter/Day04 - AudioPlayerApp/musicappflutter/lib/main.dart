import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const MusicApp());

class MusicApp extends StatelessWidget {
  const MusicApp({Key? key}) : super(key: key);
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Widget buildKey(Color color, int soundNumber) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          minimumSize: Size(double.infinity, 0),
          padding: EdgeInsets.zero,
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(""),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black26,
        body: SafeArea(
          child: Column(
            children: [
              buildKey(Colors.red, 1),
              buildKey(Colors.green, 2),
              buildKey(Colors.yellow, 3),
              buildKey(Colors.orange, 4),
              buildKey(Colors.teal, 5),
              buildKey(Colors.blue, 6),
              buildKey(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
