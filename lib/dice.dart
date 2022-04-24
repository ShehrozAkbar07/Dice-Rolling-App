import 'package:flutter/material.dart';
import 'dart:math';

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int U_image = 1;
  int D_image = 3;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding:
              const EdgeInsets.only(top: 25, bottom: 25, left: 20, right: 20),
          child: Column(children: [
            TextButton(
                onPressed: () {
                  setState(() {
                    U_image = Random().nextInt(6) + 1;
                  });
                  print('dice $U_image');
                },
                child: Image(image: AssetImage('images/dice$U_image.png'))),
            const SizedBox(
              height: 15,
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    D_image = Random().nextInt(6) + 1;
                  });
                  print('dice $D_image');
                },
                child: Image(image: AssetImage('images/dice$D_image.png'))),
          ]),
        ),
      ),
    );
  }
}
