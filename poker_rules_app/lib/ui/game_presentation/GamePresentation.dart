import 'package:flutter/material.dart';
import 'package:poker_rules_app/constants/constants.dart';

import '../CopyrightDialog.dart';

class GamePresentation extends StatelessWidget {
  const GamePresentation({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle titleStyle = const TextStyle(
        color: textColor, fontSize: 25.0, fontWeight: FontWeight.w800);

    TextStyle subtitleStyle = const TextStyle(
        color: textColor, fontSize: 16.0, fontWeight: FontWeight.w400);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Game description'),
          backgroundColor: accentColor,
          actions: [
            IconButton(
              icon: const Icon(Icons.copyright),
              onPressed: () => showDialog(
                context: context,
                builder: (context) => const CopyrightDialog(),
              ),
            ),
          ],
        ),
        body: Container(
            color: defaultColor,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16)
                    .add(const EdgeInsets.only(bottom: 32, top: 16)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Introduction section
                    Text(
                      'Introduction',
                      style: titleStyle,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Texas Holdem is a popular poker game that involves betting and strategic play. The game is played with a standard deck of 52 cards, and can be played with 2-10 players.',
                      style: subtitleStyle,
                    ),
                    const SizedBox(height: 32),

                    // Game setup section
                    Text(
                      'Game Setup',
                      style: titleStyle,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'To start the game, each player is dealt two cards face down, known as the "hole" or "pocket" cards. The dealer then deals five community cards face up in the middle of the table.',
                      style: subtitleStyle,
                    ),
                    const SizedBox(height: 32),

                    // Betting rounds section
                    Text(
                      'Betting Rounds',
                      style: titleStyle,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'There are four rounds of betting in Texas Holdem: the preflop, the flop, the turn, and the river. In each round, players have the option to call (match the previous bet), raise (increase the previous bet), or fold (give up their hand).',
                      style: subtitleStyle,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'The first round of betting occurs after the hole cards are dealt. The second round of betting occurs after the first three community cards (the flop) are dealt. The third round of betting occurs after the fourth community card (the turn) is dealt. The fourth and final round of betting occurs after the fifth community card (the river) is dealt.',
                      style: subtitleStyle,
                    ),
                    const SizedBox(height: 32),

                    // Showdown section
                    Text(
                      'Showdown',
                      style: titleStyle,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'After the final round of betting, any remaining players reveal their hole cards and the best hand wins the pot. The winning hand is determined by the best combination of five cards using any combination of the hole cards and community cards.',
                      style: subtitleStyle,
                    ),
                    const SizedBox(height: 32),

                    // Conclusion section
                    Text(
                      'Conclusion',
                      style: titleStyle,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Texas Holdem is a fun and challenging game that requires skill, strategy, and a bit of luck. By following these simple steps, you can learn how to play and enjoy the game with your friends and family!',
                      style: subtitleStyle,
                    ),
                  ],
                ),
              ),
            )));
  }
}
