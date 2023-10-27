import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import '../../Components/cText.dart';
import '../../constants/appRoutes.dart';
import '../../constants/colors.dart';
import 'widgets/cTextField.dart';
import '../../logic/gameLogic/logic.dart';
import '../../constants/paddings.dart';

class MenuScreen extends StatefulWidget {
  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen>
    with SingleTickerProviderStateMixin {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller1.dispose();
    controller2.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          kGreyAccent,
          kIndigo,
        ], begin: Alignment.bottomLeft, end: Alignment.topRight)),
        padding: menuPadding,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                text1('Tic', 25),
                text1('Tac', 25),
                text1('Toe', 25),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 150,
              width: 150,
              child: Image(
                image: AssetImage('assets/logo.png'),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Expanded(
                flex: isSwitched ? 0 : 1,
                child: customTextField(
                    hint: "Enter first player's name",
                    controller: controller1,
                    func: submit1)),
             const SizedBox(
              height: 8,
            ),      
            Visibility(
              visible: isSwitched,
              child: Expanded(
                flex: 2,
                child: customTextField(
                    hint: "Enter second player's name",
                    controller: controller2,
                    func: submit2),
              ),
            ),
            Center(
              child: LiteRollingSwitch(
                textOnColor: kWhite,
                textOffColor: kWhite,
                iconOff: Icons.person,
                textOff: '1 Player',
                colorOff: kIndigo,
                textOn: '2 Players',
                colorOn: kIndigo,
                value: isSwitched,
                animationDuration: const Duration(milliseconds: 500),
                iconOn: Icons.people,
                onChanged: (bool newvalue) =>
                    setState(() => isSwitched = newvalue),
                onDoubleTap: () {},
                onSwipe: () {},
                onTap: () {},
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () => startPlaying(context),
              child: Container(
                padding: const EdgeInsets.all(15),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: kIndigo),
                child: text1('Start', 15),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void submit1(String value) {
    setState(() => player1 = value);
  }

  void submit2(String value) {
    setState(() => player2 = value);
  }

  void startPlaying(BuildContext ctx) {
    player1 = controller1.text;
    player2 = controller2.text;
    if (player1 == '') player1 = 'Player1';
    if (isSwitched && player2 == '') player2 = 'Player2';
    Navigator.of(ctx)
        .pushReplacementNamed(isSwitched ? twoPlayers : singlePlayer);
  }
}
