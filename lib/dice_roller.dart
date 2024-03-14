import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = "assets/images/dice-2.png";

  void rollDice() {
    var diceRoll = Random().nextInt(6) + 1;
    setState(() {
      activeDiceImage = "assets/images/dice-$diceRoll.png"; // Update this line
    });
  }

  @override
  Widget build(Object context) {
    return Column(
      mainAxisSize: MainAxisSize.min, //centered vertically
      children: [
        Image.asset(activeDiceImage, width: 200),
        TextButton(
            onPressed: rollDice,
            child: const Text(
              "Roll Dice",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  backgroundColor: Colors.transparent),
            )),
      ],
    );
  }
}
