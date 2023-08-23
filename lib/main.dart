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

  Expanded criarBtn({required Color cor, required int numNota}) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: cor, // Background color
        ),
        onPressed: () {
          tocarSom(numNota);
        },
        child: const SizedBox(
          width: 100.0,
          height: 50.0,
        ),
      ),
    );
  }

  MarimbaApp({super.key});

  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                criarBtn(cor: Colors.teal, numNota: 1),
                criarBtn(cor: Colors.blue, numNota: 2),
                criarBtn(cor: Colors.yellow, numNota: 3),
                criarBtn(cor: Colors.red, numNota: 4),
                criarBtn(cor: Colors.grey, numNota: 5),
                criarBtn(cor: Colors.purple, numNota: 6),
                criarBtn(cor: Colors.brown, numNota: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}