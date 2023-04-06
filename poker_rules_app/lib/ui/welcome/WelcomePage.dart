import 'package:flutter/material.dart';
import 'package:poker_rules_app/constants/constants.dart';
import 'package:poker_rules_app/ui/game_presentation/GamePresentation.dart';
import 'package:poker_rules_app/ui/hand_rankings/HandRankings.dart';

// import '../CopyrightDialog.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  static const _title = 'Texas Hold\'em Poker Rules';
  static const _description =
      'Texas Hold\'em is the most popular type of poker game. In this game, each player receives two cards (hole cards) and shares five community cards with the other players. The goal is to make the best possible five-card hand using any combination of the seven cards available.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The Poker Rules App'),
        backgroundColor: accentColor,
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: defaultColor,
          image: DecorationImage(
            image: AssetImage('assets/ace_cards.png'),
            fit: BoxFit.contain,
            alignment: Alignment.topCenter,
          ),
        ),
        // color: defaultColor,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                _title,
                style: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16.0),
              const Text(
                _description,
                style: TextStyle(
                  fontSize: 16.0,
                  color: textColor,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 18.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(accentColor),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        )),
                        textStyle: MaterialStateProperty.all(const TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        )),
                        fixedSize: MaterialStateProperty.all(const Size(
                            170.0, 50.0)), // set the width and height here
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const GamePresentation()));
                      },
                      icon: const Icon(Icons.info_outline, color: textColor),
                      label: const Text(
                        "INFO",
                        style: TextStyle(
                          color: textColor,
                        ),
                      )),
                  ElevatedButton.icon(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(accentColor),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        )),
                        textStyle: MaterialStateProperty.all(const TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        )),
                        fixedSize: MaterialStateProperty.all(const Size(
                            170, 50.0)), // set the width and height here
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HandRankings()),
                        );
                      },
                      icon: const Icon(Icons.list, color: textColor),
                      label: const Text(
                        "RANKS",
                        style: TextStyle(
                          color: textColor,
                        ),
                      )),
                ],
              ),
              const SizedBox(height: 64.0)
            ],
          ),
        ),
      ),
    );
  }
}
