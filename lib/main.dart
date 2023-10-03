import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key, Key? key1});

  void playSound(int? soundNumber) {
    final player = AudioPlayer(); // Initialize the player here
    player.setSourceAsset('note$soundNumber.wav');
    player.resume();
  }

  Expanded xylophoneKey({Color? color, int? soundNumber}) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          playSound(soundNumber);
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = 50;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Xylophone'),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              xylophoneKey(color: Colors.red, soundNumber: 1),
              xylophoneKey(color: Colors.orange, soundNumber: 2),
              xylophoneKey(color: Colors.yellow, soundNumber: 3),
              xylophoneKey(color: Colors.green, soundNumber: 4),
              xylophoneKey(color: Colors.teal, soundNumber: 5),
              xylophoneKey(color: Colors.blue, soundNumber: 6),
              xylophoneKey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
