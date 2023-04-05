import 'package:flutter/material.dart';
import 'package:poker_rules_app/constants/constants.dart';

class ListViewHome extends StatelessWidget {
  const ListViewHome({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> handRankings = [
      "Royal Flush",
      "Straight Flush",
      "Four of a Kind",
      "Full House",
      "Flush",
      "Straight",
      "Three of a Kind",
      "Two Pair",
      "Pair",
      "High Card",
    ];

    final Map<String, String> handRankingDescriptions = {
      "Royal Flush": "Ace, King, Queen, Jack and Ten of the same suit.",
      "Straight Flush": "Five cards of the same suit in sequence.",
      "Four of a Kind": "Four cards of the same rank.",
      "Full House":
          "Three cards of the same rank, and two cards of another rank.",
      "Flush": "Five cards of the same suit, not in sequence.",
      "Straight": "Five cards in sequence, not of the same suit.",
      "Three of a Kind": "Three cards of the same rank.",
      "Two Pair": "Two cards of one rank, two cards of another rank.",
      "Pair": "Two cards of the same rank.",
      "High Card": "The highest ranking card in the hand."
    };

    List<Card> cardList = [];

    for (String ranking in handRankings) {
      cardList.add(Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        color: accentColor,
        child: SizedBox(
          width: 300,
          height: 100,
          child: Center(
            child: ListTile(
              title: Text(
                ranking,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: defaultColor,
                ),
              ),
              subtitle: Text(handRankingDescriptions[ranking] ?? "",
                  style: const TextStyle(
                    fontSize: 13,
                    color: textColor,
                  )),
            ),
          ),
        ),
      ));
    }

    return ListView(
      padding: const EdgeInsets.all(8),
      children: cardList,
    );
  }
}
