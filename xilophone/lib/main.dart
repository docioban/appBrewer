import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XilophonePage());

class XilophonePage extends StatefulWidget {
  @override
  _XilophonePageState createState() => _XilophonePageState();
}

class _XilophonePageState extends State<XilophonePage> {
  void playSong(String file) {
    final player = AudioCache();
    player.play(file);
  }

  Widget createCell(String song, MaterialColor color) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
            playSong(song);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              createCell("note1.wav", Colors.blue),
              createCell("note2.wav", Colors.yellow),
              createCell("note3.wav", Colors.red),
              createCell("note4.wav", Colors.teal),
              createCell("note5.wav", Colors.pink),
              createCell("note6.wav", Colors.orange),
              createCell("note7.wav", Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
