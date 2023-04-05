import 'package:flutter/material.dart';
import 'package:poker_rules_app/constants/constants.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: accentColor,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/combinations-image-eng.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
