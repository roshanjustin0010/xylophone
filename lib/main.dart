import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
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
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            AssetsAudioPlayer.newPlayer().open(
              Audio("assets/note1.wav"),
              autoStart: true,
              showNotification: true,
            );
          },
          child: Container(
            height: 100,
            width: 100,
            color: Colors.red,
          ),
        )
      ],
    );
  }
}
