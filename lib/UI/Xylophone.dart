import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class Xylophone extends StatefulWidget {
  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  void Soundplay(int soundnum) {
    final player = AudioCache();
    player.play('note$soundnum.wav');
  }

  Expanded BuildKey({Color color, int soundNum}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () => Soundplay(soundNum),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Xylophone'),
        backgroundColor: Colors.blueGrey.shade300,
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              BuildKey(color: Colors.red, soundNum: 1),
              BuildKey(color: Colors.orange, soundNum: 2),
              BuildKey(color: Colors.yellow, soundNum: 3),
              BuildKey(color: Colors.green, soundNum: 4),
              BuildKey(color: Colors.teal, soundNum: 5),
              BuildKey(color: Colors.blue, soundNum: 6),
              BuildKey(color: Colors.purple, soundNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
