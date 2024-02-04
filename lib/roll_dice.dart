import 'dart:math';
import 'package:flutter/material.dart';

class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() {
    return _RollDiceState();
  }
}

class _RollDiceState extends State<RollDice> {
  var activeDiceImage = 'assets/images/dice_1.png';
  var prev = 1;
  var num = 1;

  void roll() {
    do{
      num = Random().nextInt(5) + 1;
    } while (prev == num);
    setState(() {
      prev = num;
      activeDiceImage = 'assets/images/dice_$num.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage ,
          width: 180,
        ),
        const SizedBox(height: 25),
        OutlinedButton(
          onPressed: roll, 
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 20,
            ),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
