import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  int noteNumber = 0;
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildButton(
                  color: Colors.deepOrangeAccent,
                  soundNum: 1,
                ),
                buildButton(
                  color: Colors.orange,
                  soundNum: 2,
                ),
                buildButton(
                  color: Colors.amber,
                  soundNum: 3,
                ),
                buildButton(
                  color: Colors.red,
                  soundNum: 4,
                ),
                buildButton(
                  color: Colors.blue,
                  soundNum: 5,
                ),
                buildButton(
                  color: Colors.green,
                  soundNum: 6,
                ),
                buildButton(
                  color: Colors.teal,
                  soundNum: 7,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void playSound({int note}) {
    player.play('note$note.wav');
  }

  Expanded buildButton({Color color, int soundNum}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(note: soundNum);
        },
      ),
    );
  }
}
