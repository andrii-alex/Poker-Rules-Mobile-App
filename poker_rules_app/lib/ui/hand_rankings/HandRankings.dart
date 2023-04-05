import 'package:flutter/material.dart';
import 'package:poker_rules_app/constants/constants.dart';
import '../CopyrightDialog.dart';
import '../welcome/WelcomePage.dart';
import 'ListViewHome.dart';

class HandRankings extends StatelessWidget {
  const HandRankings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hand Rankings',
      home: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: const Text('Hand Rankings'),
            backgroundColor: accentColor,
            leading: IconButton(
                icon: const Icon(Icons.home),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WelcomePage(),
                    ))),
          ),
          body: Container(
            color: defaultColor,
            child: const ListViewHome(),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: accentColor,
            child: const Icon(Icons.copyright),
            onPressed: () => showDialog(
              context: context,
              builder: (context) => const CopyrightDialog(),
            ),
          ),
        ),
      ),
    );
  }
}
