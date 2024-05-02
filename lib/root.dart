import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Root extends StatelessWidget {
  const Root({super.key});

  void playsound(int num) {
    final player = AudioPlayer();
    player.play(DeviceFileSource('assets/note$num.wav'));
  }

  Container build_key({required color, required sound}) {
    return Container(
      color: color, // Set the background color of the container
      width: double.infinity, // Set the width of the container
      height: 85, // Set the height of the container
      padding: EdgeInsets.all(10), // Set padding for the container's child
      // Set margin around the container
      child: TextButton(
          onPressed: () {
            playsound(sound);
          },
          child: Text('note-$sound')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.black,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  build_key(color: Colors.red, sound: 1),
                  build_key(color: Colors.blue, sound: 2),
                  build_key(color: Colors.green, sound: 3),
                  build_key(color: Colors.yellow, sound: 4),
                  build_key(color: Colors.orange, sound: 5),
                  build_key(color: Colors.teal, sound: 6),
                  build_key(color: Colors.red, sound: 7),
                  build_key(color: Colors.green, sound: 1),
                ],
              ),
            )));
  }
}
