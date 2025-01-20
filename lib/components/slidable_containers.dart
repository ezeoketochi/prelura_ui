import 'dart:math';

import 'package:flutter/material.dart';

class SlidableContainers extends StatelessWidget {
  final int index;
  final List topics;

  const SlidableContainers({
    super.key,
    required this.index,
    required this.topics,
  });

  @override
  Widget build(BuildContext context) {
    final Random random = Random();

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromRGBO(
          random.nextInt(index + 240),
          random.nextInt(index + 250),
          random.nextInt(index + 210),
          1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Text(
            '#${topics[index]}',
          ),
        ),
      ),
    );
  }
}
