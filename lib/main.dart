import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MusicPlayer());
}

class MusicPlayer extends StatelessWidget {
  void playMusic(int music) {
    final player = AudioCache();
    player.play('note$music.wav');
  }

  Expanded buildKey(Color color, int soundNumber) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playMusic(soundNumber);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Music Player'),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(Colors.red, 1),
              buildKey(Colors.blue, 2),
              buildKey(Colors.green, 3),
              buildKey(Colors.orange, 4),
              buildKey(Colors.purple, 5),
              buildKey(Colors.teal, 6),
              buildKey(Colors.purpleAccent, 7),
            ],
          ),
        ),
      ),
    );
  }
}
