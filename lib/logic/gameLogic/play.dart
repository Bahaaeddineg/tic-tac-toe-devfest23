import 'logic.dart';
import 'autoPlay.dart';
import 'checkingWinner.dart';

onTap(int index) {
    if (!X.contains(index) && !O.contains(index) && result == "Play" ) {
      if (turn % 2 == 0) {
          X.add(index);
          turn++;
          if (turn < 8 && !isSwitched) autoPlay(onTap);
      } else {
          O.add(index);
          turn++;
      }
      checkwinner();
    }
  }