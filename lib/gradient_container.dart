import 'package:flutter/material.dart';
import 'package:flutter_app/dice_roller.dart';

const sartAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});
  const GradientContainer.purple({super.key})
      : colors = const [
          Color.fromARGB(255, 97, 42, 192),
          Color.fromARGB(255, 38, 6, 93)
        ];

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: sartAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
