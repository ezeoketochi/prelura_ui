import 'package:flutter/material.dart';

class DecoratedCircle extends StatelessWidget {
  final double width;
  final double height;
  const DecoratedCircle({super.key, this.width = 66, this.height = 66});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width, // Adjust size as needed
      height: height,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: SweepGradient(
          colors: [
            Colors.red,
            Colors.orange,
            Colors.yellow,
            Colors.red,
          ],
          stops: [0.1, 0.5, 0.7, 1.0],
          startAngle: 0.0,
          endAngle: 3.14 * 2,
        ),
      ),
      child: Container(
        margin: const EdgeInsets.all(3), // Border thickness
        decoration: const BoxDecoration(
          color: Colors.white, // Inner circle color
          shape: BoxShape.circle,
        ),
        child: const Center(child: Text("3")),
      ),
    );
  }
}
