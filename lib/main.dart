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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              AssetsAudioPlayer.newPlayer().open(
                Audio("assets/note1.wav"),
                autoStart: true,
                showNotification: true,
              );
            },
            child: Container(
              color: Colors.red,
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              playsound(3);
            },
            child: Container(
              color: Colors.yellow,
            ),
          ),
        ),
        OutlinedButton(
            onPressed: () {},
            child: Container(
              color: Colors.black,
            ))
      ],
    );
  }
}
