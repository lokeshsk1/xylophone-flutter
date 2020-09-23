import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded buildKey(int n, Color clr) {
    return Expanded(
      child: FlatButton(
        color: clr,
        onPressed: () {
          playSound(n);
        },
      ),
    );
  }

  void playSound(int n) {
    final player = AudioCache();
    player.play('note$n.wav');
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
                buildKey(1, Color(0Xfff94144)),
                buildKey(2, Color(0xFFF3722c)),
                buildKey(3, Color(0xffF8961E)),
                buildKey(4, Color(0xffF9C74F)),
                buildKey(5, Color(0xff90BE6D)),
                buildKey(6, Color(0xff43AA8B)),
                buildKey(7, Color(0xff577590)),
              ],
            ),
          )),
    );
  }
}
