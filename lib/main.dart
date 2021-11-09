import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int soundNumber){
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
  Expanded BuildKey({Color color, soundNumber,  title}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed:() {
          playsound(soundNumber);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              BuildKey(color: Colors.red, soundNumber:1),
              BuildKey(color: Colors.orange, soundNumber:2),
              BuildKey(color: Colors.blue, soundNumber:3),
              BuildKey(color: Colors.teal, soundNumber:4),
              BuildKey(color: Colors.yellow, soundNumber:5),
              BuildKey(color: Colors.green, soundNumber:6),
              BuildKey(color: Colors.purple, soundNumber:7),
            ],
          ),
        ),
      ),
    );
  }
}
