//Apurv
import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// ignore: must_be_immutable
class GradientContainer extends StatelessWidget {
   const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}

// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key, required this.colors});

//   final List<Color> colors;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//           decoration:  BoxDecoration(
//             gradient: LinearGradient(
//               colors: colors,
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//             ),
//           ),
//           child: const Center(
//               child: StyledText('Hello World')),
//         );
//   }
// }
