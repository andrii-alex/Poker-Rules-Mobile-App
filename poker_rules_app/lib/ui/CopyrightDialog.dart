import 'package:flutter/material.dart';

class CopyrightDialog extends StatelessWidget {
  const CopyrightDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('PROJECT BY ANDRII'),
      content: const Text('© ANDRII ALEX - Flutter 2023. All rights reserved.'),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('OK'),
        ),
      ],
    );
  }
}
