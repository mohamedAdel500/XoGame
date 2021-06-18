import 'package:flutter/material.dart';
import 'package:flutter_projects/XOButton.dart';

class BoardState extends State {
  List<String> items = ['', '', '', '', '', '', '', '', ''];
  int playingCounter = 1;
  int XScore = 0;
  int OScore = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Text('Welcome to our XO game '),
            Text('Player 1 (X) and Player 2 (O)'),
            Text(
                'player turn is:  ${playingCounter % 2 != 0 ? 'player 1 ' : 'player 2 '}'),
            Text('Player 1 score :$XScore  Player 2 Score : $OScore')
          ],
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              XOButton(items[0], 0, playerClick),
              XOButton(items[1], 1, playerClick),
              XOButton(items[2], 2, playerClick),
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              XOButton(items[3], 3, playerClick),
              XOButton(items[4], 4, playerClick),
              XOButton(items[5], 5, playerClick),
            ],
          ),
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              XOButton(items[6], 6, playerClick),
              XOButton(items[7], 7, playerClick),
              XOButton(items[8], 8, playerClick),
            ],
          ),
        )
      ],
    );
  }

  void playerClick(int position) {
    if (items[position].isNotEmpty) return;

    setState(() {
      if (playingCounter % 2 != 0) {
        items[position] = 'X';
      } else {
        items[position] = 'O';
      }
      checkWinner('X');
      checkWinner('O');
      if (playingCounter == 9) {
        resetGame();
      }
      playingCounter++;
    });
  }

  void checkWinner(String player) {
    if (items[0] == player && items[1] == player && items[2] == player) {
      if (player == 'X') {
        XScore++;
      } else {
        OScore++;
      }
      resetGame();
    } else if (items[3] == player && items[4] == player && items[5] == player) {
      if (player == 'X') {
        XScore++;
      } else {
        OScore++;
      }
      resetGame();
    } else if (items[6] == player && items[7] == player && items[8] == player) {
      if (player == 'X') {
        XScore++;
      } else {
        OScore++;
      }
      resetGame();
    } else if (items[0] == player && items[3] == player && items[6] == player) {
      if (player == 'X') {
        XScore++;
      } else {
        OScore++;
      }
      resetGame();
    } else if (items[1] == player && items[4] == player && items[7] == player) {
      if (player == 'X') {
        XScore++;
      } else {
        OScore++;
      }
      resetGame();
    } else if (items[2] == player && items[5] == player && items[8] == player) {
      if (player == 'X') {
        XScore++;
      } else {
        OScore++;
      }
      resetGame();
    } else if (items[0] == player && items[4] == player && items[8] == player) {
      if (player == 'X') {
        XScore++;
      } else {
        OScore++;
      }
      resetGame();
    } else if (items[2] == player && items[4] == player && items[6] == player) {
      if (player == 'X') {
        XScore++;
      } else {
        OScore++;
      }
      resetGame();
    }
  }

  void resetGame() {
    setState(() {
      items = ['', '', '', '', '', '', '', '', ''];
      playingCounter = 1;
    });
  }
}

class XOBoardWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BoardState();
  }
}
