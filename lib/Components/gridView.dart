import 'package:flutter/material.dart';
import '../logic/gameLogic/logic.dart';
import '../constants/colors.dart';
import '../logic/gameLogic/play.dart';

class GameGridView extends StatefulWidget {
  final VoidCallback updateScreen;
  GameGridView({required this.updateScreen});

  @override
  State<GameGridView> createState() => _GameGridViewState();
}

class _GameGridViewState extends State<GameGridView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: isSwitched ? 3 : 5,
      child: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        childAspectRatio: 1,
        children: List.generate(
          9,
          (index) => InkWell(
            onTap: () {
              onTap(index);
              widget.updateScreen();
            },
            child: Container(
              decoration: BoxDecoration(
                  color: color.contains(index)? kAmber:kGridElement,
                  border: Border.all(color: kWhite),
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text(
                  X.contains(index)
                      ? 'X'
                      : O.contains(index)
                          ? 'O'
                          : '',
                  style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: X.contains(index)
                        ? kRed
                        : O.contains(index)
                            ? kBlue
                            : null,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
