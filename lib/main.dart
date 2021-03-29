import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(XyloApp());
}


class XyloApp extends StatefulWidget {
  @override
  _XyloAppState createState() => _XyloAppState();
}

class _XyloAppState extends State<XyloApp> {
  void playSound(int number){
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Expanded buildKey(int soundNum, Color color) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNum);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(1,Colors.red),
              buildKey(2,Colors.green),
              buildKey(3,Colors.blue),
              buildKey(4,Colors.deepPurple),
              buildKey(5,Colors.orangeAccent),
              buildKey(6,Colors.yellowAccent),
              buildKey(7,Colors.pinkAccent),
            ],
          ),
        ),
      ),
    );
  }
}

