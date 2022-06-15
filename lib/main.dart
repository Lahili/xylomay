import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();
  audioNote(a) {
    player.play('note$a.wav');
  }

  Widget buildKey(int a, Color clr) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          audioNote(a);
        },
        child: Container(color: clr),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              buildKey(1, Colors.amber),
              buildKey(2, Colors.deepOrangeAccent),
              buildKey(3, Colors.deepPurpleAccent),
              buildKey(4, Colors.green),
              buildKey(5, Colors.teal),
              buildKey(6, Colors.red),
              buildKey(7, Colors.brown)
            ],
          ),
        ),
      ),
    );
  }
}
