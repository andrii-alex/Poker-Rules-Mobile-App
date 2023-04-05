import 'package:flutter/material.dart';
import 'package:poker_rules_app/constants/constants.dart';
import 'package:poker_rules_app/ui/CopyrightDialog.dart';

import 'ImagePage.dart';
// import '../welcome/WelcomePage.dart';

class HandRankings extends StatelessWidget {
  const HandRankings({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> handRankings = [
      "Royal Flush \n(A♦ K♦ Q♦ J♦ T♦)\n",
      "Straight Flush \n(T♥ 9♥ 8♥ 7♥ 6♥)\n",
      "Four-of-a-Kind \n(J♦ J♣ J♠ J♥ K♦)\n",
      "Full House \n(A♥ A♣ A♦ 9♠ 9♣)\n",
      "Flush \n(A♠ J♠ 8♠ 4♠ 3♠)\n",
      "Straight \n(9♥ 8♠ 7♣ 6♦ 5♣)\n",
      "Three-of-a-Kind \n(7♠ 7♦ 7♣ K♦ Q♣)\n",
      "Two-Pair \n(9♣ 9♦ 6♣ 6♠ Q♥)\n",
      "One-Pair \n(A♦ A♥ K♠ 9♦ 4♥)\n",
      "High Card \n(A♠ J♦ 8♣ 6♠ 2♥)\n",
    ];

    final Map<String, String> handRankingDescriptions = {
      "Royal Flush \n(A♦ K♦ Q♦ J♦ T♦)\n":
          "The best hand possible, a royal flush consists of A, K, Q, J and 10, all of the same suit.",
      "Straight Flush \n(T♥ 9♥ 8♥ 7♥ 6♥)\n":
          "Also very rare, a straight flush consists of any straight that is all the same suit.",
      "Four-of-a-Kind \n(J♦ J♣ J♠ J♥ K♦)\n":
          "Four of a kind, or 'quads', consists of four cards of equal value along with another card known as a side card.",
      "Full House \n(A♥ A♣ A♦ 9♠ 9♣)\n":
          "A full house consists of three cards of one value and two cards of another.",
      "Flush \n(A♠ J♠ 8♠ 4♠ 3♠)\n":
          "A flush is a hand which has all cards of the same suit.",
      "Straight \n(9♥ 8♠ 7♣ 6♦ 5♣)\n":
          "A straight has 5 cards of consecutive value that are not all the same suit.",
      "Three-of-a-Kind \n(7♠ 7♦ 7♣ K♦ Q♣)\n":
          "Also known as 'trips', three of a kind is 3 cards of the same value and 2 side cards of different values.",
      "Two-Pair \n(9♣ 9♦ 6♣ 6♠ Q♥)\n":
          "Two pair consists of two cards of equal value, another two cards of equal value, and one extra card.",
      "One-Pair \n(A♦ A♥ K♠ 9♦ 4♥)\n":
          "One pair consists of two cards of the same value, and three extra cards.",
      "High Card \n(A♠ J♦ 8♣ 6♠ 2♥)\n":
          "High card is when you have five cards that do not interact with each other to make any of the above hands."
    };
    List<Card> cardList = [];

    for (String ranking in handRankings) {
      cardList.add(Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        color: accentColor,
        child: SizedBox(
          width: 300,
          height: 150,
          child: Center(
            child: ListTile(
              title: Text(
                ranking,
                style: const TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
                textAlign: TextAlign.center,
              ),
              subtitle: Text(
                handRankingDescriptions[ranking] ?? "",
                style: const TextStyle(
                  fontSize: 14,
                  color: textColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ));
    }
    return Scaffold(
      body: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: const Text('Hand Rankings'),
            backgroundColor: accentColor,
            automaticallyImplyLeading: true,
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
            child: ListView(
              padding: const EdgeInsets.all(16).add(
                const EdgeInsets.only(bottom: 32),
              ),
              children: cardList
                  .map((card) => Padding(
                        padding: const EdgeInsets.only(
                            bottom:
                                16), // Add some padding to the bottom of each card
                        child: card,
                      ))
                  .toList(),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: textColor,
            foregroundColor: defaultColor,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ImagePage()),
              );
            },
            child: const Icon(Icons.image),
          ),
        ),
      ),
    );
  }
}
