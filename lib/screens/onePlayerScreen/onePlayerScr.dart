import 'package:flutter/material.dart';
import '../../Components/cText.dart';
import '../../Components/scores.dart';
import '../../logic/gameLogic/logic.dart';
import '../../constants/appRoutes.dart';
import '../../constants/colors.dart';
import '../../constants/paddings.dart';
import '../../logic/gameLogic/checkingWinner.dart';
import '../../logic/gameLogic/playAgain.dart';
import '../../Components/gridView.dart';

class OnePlayerScreen extends StatefulWidget {
  @override
  State<OnePlayerScreen> createState() => _OnePlayerScreenState();
}

class _OnePlayerScreenState extends State<OnePlayerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: onePlayerPadding,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [kIndigo, kGreyAccent],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                singleplayerscore1(player1, score1),
                const SizedBox(
                  width: 20,
                ),
                text1("Vs", 20),
                const SizedBox(
                  width: 20,
                ),
                singleplayerscore1('Computer', score2),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.amber,
              thickness: 8,
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              flex: 1,
              child: text1(selectText(0), 30),
            ),
            GameGridView(updateScreen: updateScreen),
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
                    label: text1('Replay', 8)),
                ElevatedButton.icon(
                  onPressed: () => toMainMenu(context),
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(kIndigo),
                  ),
                  icon: const Icon(Icons.home),
                  label: text1('Menu', 8),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  updateScreen() => setState(() {});

  toMainMenu(BuildContext ctx) {
    playagain();
    score1 = score2 = 0;
    color=[];
    Navigator.of(ctx).pushReplacementNamed(menu);
  }
}
