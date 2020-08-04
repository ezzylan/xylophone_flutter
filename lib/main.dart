import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Xylophone by Ezzy"),
        ),
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              xyloKey(Colors.red, "C", 1),
              xyloKey(Colors.orange, "D", 2),
              xyloKey(Colors.yellow, "E", 3),
              xyloKey(Colors.green, "F", 4),
              xyloKey(Colors.teal, "G", 5),
              xyloKey(Colors.blue, "A", 6),
              xyloKey(Colors.purple, "B", 7),
            ],
          ),
        ),
      ),
    );
  }

  Expanded xyloKey(Color colour, String note, int soundNum) {
    return Expanded(
      child: FlatButton(
        color: colour,
        onPressed: () {
          final player = AudioCache();
          player.play('note$soundNum.wav');
        },
        child: Text(
          note,
          textScaleFactor: 2,
        ),
      ),
    );
  }
}
