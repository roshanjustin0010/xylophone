import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.black,
      body: Xylophone(),
    ),
  ));
}

class Xylophone extends StatefulWidget {
  const Xylophone({Key? key}) : super(key: key);

  @override
  State<Xylophone> createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  void playsound(int no) {
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/note$no.wav"),
      autoStart: true,
      showNotification: true,
    );
  }

  Expanded soundbutton({Color? col, int? number}) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          playsound(number!);
        },
        child: Container(
          color: col,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        soundbutton(col: Colors.red, number: 1),
        soundbutton(col: Colors.orange, number: 2),
        soundbutton(col: Colors.yellow, number: 3),
        soundbutton(col: Colors.green, number: 4),
        soundbutton(col: Colors.teal, number: 5),
        soundbutton(col: Colors.blue, number: 6),
        soundbutton(col: Colors.purple, number: 7),
      ],
    );
  }
}
