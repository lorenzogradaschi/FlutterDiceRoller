import 'package:flutter/material.dart';
import 'package:flutterproject/dice_roller.dart';
import 'package:flutterproject/style_text.dart';

var startAlignment = Alignment.topLeft;

class GradientContainer extends StatelessWidget {
  GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.white, Colors.white],
            begin: startAlignment,
            end: Alignment.bottomCenter),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
