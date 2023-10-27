import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../logic/gameLogic/logic.dart';
Text text1(String text, double size) {
  Color color = kBlack;
  switch (text) {
    case 'Congratulations!' || 'You won!':
      color = kAmber;
      break;
    case 'You lose!' || 'Vs' || 'Tic':
      color = kRed;
      break;

    case 'Draw' || 'Computer' || 'Tac':
      color = kBlue;
      break;
    case 'Toe':
      color = kGreen;
      break;
    case 'Replay' || 'Menu':
      color = kWhite;
      break;
    default:
      {
        color = kWhite;
      }
      break;
  }
  if (text == player1)
    color = kRed;
  else if (text == player2) color = kBlue;
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: color,
      fontSize: size,
      letterSpacing: 2,
      fontFamily: 'Bebas',
      fontWeight: FontWeight.bold,
    ),
  );
}