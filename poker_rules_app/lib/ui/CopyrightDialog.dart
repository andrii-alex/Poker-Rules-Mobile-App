import 'package:flutter/material.dart';
import 'package:poker_rules_app/constants/constants.dart';

class CopyrightDialog extends StatelessWidget {
  const CopyrightDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: defaultColor,
      title: const Text('PROJECT BY ANDRII 😅😅😅',
          style: TextStyle(color: textColor, fontWeight: FontWeight.bold)),
      content: const Text('© ANDRII ALEX - Flutter 2023. All rights reserved.',
          style: TextStyle(color: textColor)),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('OK', style: TextStyle(color: accentColor)),
        ),
      ],
    );
  }
}
