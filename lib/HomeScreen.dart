import 'package:flutter/material.dart';
import 'package:tunes_app/models/Model.dart';
import 'package:tunes_app/widgets/item.dart';

class HomeScreen extends StatelessWidget {
  final List<Model> tunes = const [
    Model(color: Colors.red, sound: 'note1.wav'),
    Model(color: Colors.orange, sound: 'note2.wav'),
    Model(color: Colors.yellow, sound: 'note3.wav'),
    Model(color: Colors.green, sound: 'note4.wav'),
    Model(color: Color(0xff009587), sound: 'note5.wav'),
    Model(color: Colors.blue, sound: 'note6.wav'),
    Model(color: Colors.purple, sound: 'note7.wav'),
  ];

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xff243139),
        title: const Text("Tunes App"),
      ),
      body: Column(
          children: tunes
              .map(
                (e) => Item(tune: e),
              )
              .toList()), // I can use children: getTuneItems()
    );
  }
}
