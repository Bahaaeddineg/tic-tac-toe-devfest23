import 'package:flutter/material.dart';
import '../../Components/cText.dart';
import '../../Components/scores.dart';
import '../../constants/colors.dart';
import '../../logic/gameLogic/logic.dart';
import '../../constants/appRoutes.dart';
import '../../constants/paddings.dart';
import '../../logic/gameLogic/checkingWinner.dart';
import '../../logic/gameLogic/playAgain.dart';
import '../../Components/gridView.dart';

class TwoPlayersScreen extends StatefulWidget {
  @override
  State<TwoPlayersScreen> createState() => _TwoPlayersScreenState();
}

class _TwoPlayersScreenState extends State<TwoPlayersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Container(
        padding: twoPlayersPadding,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          kIndigo,
          kGreyAccent,
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Transform.rotate(
                    angle: 3.14, child: playerScore(player2, score2, kBlue))),
            const Divider(
              color: kAmber,
              thickness: 8,
            ),
            Transform.rotate(angle: 3.14, child: text1(selectText(1), 14)),
            const SizedBox(
              height: 10,
            ),
            GameGridView(updateScreen: updateScreen),
            text1(selectText(0), 15),
            const Divider(
              color: kAmber,
              thickness: 8,
            ),
            Expanded(flex: 1, child: playerScore(player1, score1, kRed)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    playagain();
                    setState(() {});
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(kIndigo),
                  ),
                  icon: const Icon(Icons.replay),
                  label: const Text("  Replay  "),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    score1 = score2 = 0;
                    playagain();
                    Navigator.of(context).pushReplacementNamed(menu);
                  },
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(kIndigo),
                  ),
                  icon: const Icon(Icons.home),
                  label: const Text("  Menu  "),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  updateScreen() => setState(() {});
}
