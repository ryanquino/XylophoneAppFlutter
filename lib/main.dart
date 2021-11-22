// ignore_for_file: prefer_const_constructors
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: XylophoneApp(),
      ),
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void player(int number) {
    AudioCache players = AudioCache();
    players.play('assets_note$number.wav');
  }

  Expanded expandedWidget({required Color color, required int number}) {
    return Expanded(
      child: TextButton(
        child: Container(
          color: color,
        ),
        style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
        onPressed: () {
          player(number);
        },
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        expandedWidget(color: Colors.red, number: 1),
        expandedWidget(color: Colors.orange, number: 2),
        expandedWidget(color: Colors.yellow, number: 3),
        expandedWidget(color: Colors.green, number: 4),
        expandedWidget(color: Colors.blue, number: 5),
        expandedWidget(color: Colors.indigo, number: 6),
        expandedWidget(color: Colors.purple, number: 7),
      ],
    );
  }
}
