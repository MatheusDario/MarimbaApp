import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MarimbaApp());
}

class MarimbaApp extends StatelessWidget {

  void tocarSom(int numNotas) {
    final player = AudioPlayer();
    player.play(AssetSource('nota$numNotas.wav'));
  }


  MarimbaApp({super.key});

  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green, // Background color
                      ),
                      onPressed: () {
                       tocarSom(1);
                      },
                      child: const SizedBox(
                        width: 100.0,
                        height: 50.0,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue, // Background color
                      ),
                      onPressed: () {
                        tocarSom(2);
                      },
                      child: Container(
                        width: 100.0,
                        height: 50.0,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.yellow, // Background color
                      ),
                      onPressed: () {
                        tocarSom(3);
                      },
                      child: const SizedBox(
                        width: 100.0,
                        height: 50.0,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red, // Background color
                      ),
                      onPressed: () {
                       tocarSom(4);
                      },
                      child: const SizedBox(
                        width: 100.0,
                        height: 50.0,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey, // Background color
                      ),
                      onPressed: () {
                        tocarSom(5);
                      },
                      child: const SizedBox(
                        width: 100.0,
                        height: 50.0,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.purple, // Background color
                      ),
                      onPressed: () {
                        tocarSom(6);
                      },
                      child: const SizedBox(
                        width: 100.0,
                        height: 50.0,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.brown, // Background color
                      ),
                      onPressed: () {
                       tocarSom(7);
                      },
                      child: const SizedBox(
                        width: 100.0,
                        height: 50.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
