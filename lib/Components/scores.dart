import 'package:flutter/material.dart';

import 'cText.dart';
Column singleplayerscore1(String text, int score) {
  return Column(
    children: [
      text1(text, 8),
      const SizedBox(
        height: 10,
      ),
      Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10))),
        child: text1("$score", 20),
      ),
    ],
  );
}

Row playerScore(String name, int score, Color color) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      text1(name, 20),
      const SizedBox(
        width: 6,
      ),
      Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: text1('$score', 35),
      ),
    ],
  );
}
