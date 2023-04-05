import 'package:flutter/material.dart';
import 'package:poker_rules_app/ui/welcome/WelcomePage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  static const defaultColor = Color.fromRGBO(36, 46, 56, 1);
  static const accentColor = Color.fromRGBO(234, 196, 61, 1);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "poker rules app",
      // localizationsDelegates: [
      //   DefaultMaterialLocalizations.delegate,
      //   DefaultWidgetsLocalizations.delegate,
      // ],
      supportedLocales: [
        Locale('en', 'US'),
        Locale('es', 'ES'),
      ],
      home: WelcomePage(),
    );
  }
}
