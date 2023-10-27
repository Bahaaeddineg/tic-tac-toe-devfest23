  import 'dart:math';


import 'logic.dart';

autoPlay(Function func) {
    emptycells = [];
    for (int i = 0; i < 9; i++) {
      if (!X.contains(i) && !O.contains(i)) {
        emptycells.add(i);
      }
    }
    if (O.contains(0) && O.contains(1) && emptycells.contains(2))
      func(2);
    else if (O.contains(0) && O.contains(2) && emptycells.contains(1))
      func(1);
    else if (O.contains(1) && O.contains(2) && emptycells.contains(0))
      func(0);
    else if (O.contains(0) && O.contains(3) && emptycells.contains(6))
      func(6);
    else if (O.contains(0) && O.contains(6) && emptycells.contains(3))
      func(3);
    else if (O.contains(3) && O.contains(6) && emptycells.contains(0))
      func(0);
    else if (O.contains(3) && O.contains(4) && emptycells.contains(5))
      func(5);
    else if (O.contains(3) && O.contains(5) && emptycells.contains(4))
      func(4);
    else if (O.contains(4) && O.contains(5) && emptycells.contains(3))
      func(3);
    else if (O.contains(6) && O.contains(7) && emptycells.contains(8))
      func(8);
    else if (O.contains(6) && O.contains(8) && emptycells.contains(7))
      func(7);
    else if (O.contains(7) && O.contains(8) && emptycells.contains(6))
      func(6);
    else if (O.contains(1) && O.contains(4) && emptycells.contains(7))
      func(7);
    else if (O.contains(1) && O.contains(7) && emptycells.contains(4))
      func(4);
    else if (O.contains(4) && O.contains(7) && emptycells.contains(1))
      func(1);
    else if (O.contains(2) && O.contains(5) && emptycells.contains(8))
      func(8);
    else if (O.contains(2) && O.contains(8) && emptycells.contains(5))
      func(5);
    else if (O.contains(5) && O.contains(8) && emptycells.contains(2))
      func(2);
    else if (O.contains(0) && O.contains(4) && emptycells.contains(8))
      func(8);
    else if (O.contains(0) && O.contains(8) && emptycells.contains(4))
      func(4);
    else if (O.contains(4) && O.contains(8) && emptycells.contains(0))
      func(0);
    else if (O.contains(2) && O.contains(4) && emptycells.contains(6))
      func(6);
    else if (O.contains(2) && O.contains(6) && emptycells.contains(4))
      func(4);
    else if (O.contains(4) && O.contains(6) && emptycells.contains(2))
      func(2);
    else if (O.contains(0) && O.contains(1) && emptycells.contains(2))
      func(2);
    else if (X.contains(0) && X.contains(2) && emptycells.contains(1))
      func(1);
    else if (X.contains(1) && X.contains(2) && emptycells.contains(0))
      func(0);
    else if (X.contains(0) && X.contains(3) && emptycells.contains(6))
      func(6);
    else if (X.contains(0) && X.contains(6) && emptycells.contains(3))
      func(3);
    else if (X.contains(3) && X.contains(6) && emptycells.contains(0))
      func(0);
    else if (X.contains(3) && X.contains(4) && emptycells.contains(5))
      func(5);
    else if (X.contains(3) && X.contains(5) && emptycells.contains(4))
      func(4);
    else if (X.contains(4) && X.contains(5) && emptycells.contains(3))
      func(3);
    else if (X.contains(6) && X.contains(7) && emptycells.contains(8))
      func(8);
    else if (X.contains(6) && X.contains(8) && emptycells.contains(7))
      func(7);
    else if (X.contains(7) && X.contains(8) && emptycells.contains(6))
      func(6);
    else if (X.contains(1) && X.contains(4) && emptycells.contains(7))
      func(7);
    else if (X.contains(1) && X.contains(7) && emptycells.contains(4))
      func(4);
    else if (X.contains(4) && X.contains(7) && emptycells.contains(1))
      func(1);
    else if (X.contains(2) && X.contains(5) && emptycells.contains(8))
      func(8);
    else if (X.contains(2) && X.contains(8) && emptycells.contains(5))
      func(5);
    else if (X.contains(5) && X.contains(8) && emptycells.contains(2))
      func(2);
    else if (X.contains(0) && X.contains(4) && emptycells.contains(8))
      func(8);
    else if (X.contains(0) && X.contains(8) && emptycells.contains(4))
      func(4);
    else if (X.contains(4) && X.contains(8) && emptycells.contains(0))
      func(0);
    else if (X.contains(2) && X.contains(4) && emptycells.contains(6))
      func(6);
    else if (X.contains(2) && X.contains(6) && emptycells.contains(4))
      func(4);
    else if (X.contains(4) && X.contains(6) && emptycells.contains(2))
      func(2);
    else {
      func(emptycells[Random().nextInt(emptycells.length)]);
    }
  }