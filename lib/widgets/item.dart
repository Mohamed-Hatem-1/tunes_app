import 'package:flutter/material.dart';
import 'package:tunes_app/models/Model.dart';

class Item extends StatelessWidget {
  final Model tune;

  const Item({super.key, required this.tune});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          tune.playSound();
        },
        child: Container(
          color: tune.color,
        ),
      ),
    );
  }
}
