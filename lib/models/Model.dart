import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Model {
  final Color color;
  final String sound;

  const Model({required this.color, required this.sound});

  playSound() {
    AudioPlayer audioPlayer = AudioPlayer();
    audioPlayer.play(AssetSource(sound));
  }
}
