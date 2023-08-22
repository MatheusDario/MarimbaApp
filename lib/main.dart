import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MarimbaApp());
}

class MarimbaApp extends StatelessWidget {
  MarimbaApp({super.key});

  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: TextButton(
              onPressed: () async {
                final player = AudioPlayer();
                player.play(AssetSource('nota2.wav'));
              },
              child: Text('Clique aqui!'),
            ),
          ),
        ),
      ),
    );
  }
}
