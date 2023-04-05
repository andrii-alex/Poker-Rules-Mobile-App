import 'package:flutter/material.dart';
import 'package:poker_rules_app/constants/constants.dart';
import 'package:poker_rules_app/ui/hand_rankings/HandRankings.dart';

import '../CopyrightDialog.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  static const _title = 'Texas Hold\'em Poker Rules';
  static const _description =
      'Texas Hold\'em is the most popular type of poker game. In this game, each player receives two cards (hole cards) and shares five community cards with the other players. The goal is to make the best possible five-card hand using any combination of the seven cards available.';
  static const _buttonText = 'POKER HAND RANKINGS';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The Poker Rules App'),
        backgroundColor: accentColor,
      ),
      body: Container(
        color: defaultColor,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                _title,
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
              ),
              const SizedBox(height: 16.0),
              const Text(
                _description,
                style: TextStyle(
                  fontSize: 18.0,
                  color: textColor,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32.0),
              const Image(
                image: AssetImage('assets/ace_cards.png'),
                width: 200.0,
                height: 200.0,
              ),
              const SizedBox(height: 32.0),
              ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: accentColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      textStyle: const TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      )),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HandRankings()));
                  },
                  icon: const Icon(Icons.star, color: defaultColor),
                  label: const Text(
                    _buttonText,
                    style: TextStyle(
                      color: defaultColor,
                    ),
                  )),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: accentColor,
        child: const Icon(Icons.copyright),
        onPressed: () => showDialog(
          context: context,
          builder: (context) => const CopyrightDialog(),
        ),
      ),
    );
  }
}
