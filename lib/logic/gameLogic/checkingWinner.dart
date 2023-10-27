import 'logic.dart';

checkwinner() {
  if (X.contains(0) && X.contains(1) && X.contains(2)) {
    color.addAll([0, 1, 2]);
    result = player1;
    score1++;
  }
  if (X.contains(3) && X.contains(4) && X.contains(5)) {
    color.addAll([3, 4, 5]);
    result = player1;
    score1++;
  }
  if (X.contains(6) && X.contains(7) && X.contains(8)) {
    color.addAll([6, 7, 8]);
    result = player1;
    score1++;
  }
  if (X.contains(0) && X.contains(3) && X.contains(6)) {
    color.addAll([0, 3, 6]);
    result = player1;
    score1++;
  }
  if (X.contains(1) && X.contains(4) && X.contains(7)) {
    color.addAll([1, 4, 7]);
    result = player1;
    score1++;
  }
  if (X.contains(2) && X.contains(5) && X.contains(8)) {
    color.addAll([2, 5, 8]);
    result = player1;
    score1++;
  }
  if (X.contains(0) && X.contains(4) && X.contains(8)) {
    color.addAll([0, 4, 8]);
    result = player1;
    score1++;
  }
  if (X.contains(2) && X.contains(4) && X.contains(6)) {
    color.addAll([2, 4, 6]);
    result = player1;
    score1++;
  }

  if (O.contains(0) && O.contains(1) && O.contains(2)) {
    color.addAll([0, 1, 2]);
    result = player2;
    score2++;
  }
  if (O.contains(3) && O.contains(4) && O.contains(5)) {
    color.addAll([3, 4, 5]);
    result = player2;
    score2++;
  }
  if (O.contains(6) && O.contains(7) && O.contains(8)) {
    color.addAll([6, 7, 8]);
    result = player2;
    score2++;
  }
  if (O.contains(0) && O.contains(3) && O.contains(6)) {
    color.addAll([0, 3, 6]);
    result = player2;
    score2++;
  }
  if (O.contains(1) && O.contains(4) && O.contains(7)) {
    color.addAll([1, 4, 7]);
    result = player2;
    score2++;
  }
  if (O.contains(2) && O.contains(5) && O.contains(8)) {
    color.addAll([2, 5, 8]);
    result = player2;
    score2++;
  }
  if (O.contains(0) && O.contains(4) && O.contains(8)) {
    color.addAll([0, 4, 8]);
    result = player2;
    score2++;
  }
  if (O.contains(2) && O.contains(4) && O.contains(6)) {
    color.addAll([2, 4, 6]);
    result = player2;
    score2++;
  }

  if (turn > 8 && result == 'Play') result = "Draw";
}

String selectText(int ok) {
  if (isSwitched) {
    if (result == 'Play') {
      if (turn % 2 == 0 && ok == 0 || turn % 2 == 1 && ok == 1) {
        return 'Your turn';
      } else {
        return ok == 0 ? '$player2 turn' : '$player1 turn';
      }
    } else if (result == 'Draw') {
      return 'Draw';
    } else if (ok == 0 ? result == player1 : result == player2) {
      return 'You won!';
    } else {
      return ok == 0 ? '$player2 wins!' : '$player1 wins!';
    }
  } else {
    if (result == 'Play') {
      return 'Play';
    } else if (result == 'Draw') {
      return 'Draw';
    } else if (result == player1) {
      return 'You won!';
    } else {
      return 'You lose!';
    }
  }
}
