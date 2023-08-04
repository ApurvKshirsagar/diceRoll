import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State <DiceRoller>{

  var currentdiceRoll = 2; 


  void rolldice() {
    setState(() {
      currentdiceRoll = randomizer.nextInt(6) + 1;;
    });
  }

  @override
  Widget build(context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-$currentdiceRoll.png',
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: rolldice,
              style: TextButton.styleFrom(
                  //padding: const EdgeInsets.only(top: 20,),
                  // padding: const EdgeInsets.all(8),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 28)),
              child: const Text('Roll Dice'),
            )
          ],
        );
  }
}