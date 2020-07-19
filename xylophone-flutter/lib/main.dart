import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded addButton(int note, MaterialColor color) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          final player = AudioCache();
          player.play('note$note.wav');
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                addButton(1, Colors.red),
                addButton(2, Colors.orange),
                addButton(3, Colors.yellow),
                addButton(4, Colors.lightGreen),
                addButton(5, Colors.green),
                addButton(6, Colors.blue),
                addButton(7, Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
