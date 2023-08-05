//Apurv
import 'package:flutter/material.dart';

import 'gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
          body: GradientContainer(Color.fromARGB(115, 0, 0, 1),
              Color.fromARGB(255, 18, 8, 69))),
    ),
  );
}
