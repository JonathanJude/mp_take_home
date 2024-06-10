import 'package:flutter/material.dart';

import 'app.dart';

const kOrangeColor = Color(0xFFF1BB6C);
const kSecondaryTextColor = Color(0xFF978C74);
const kFontFamily = "EuclidCircular";

void main() {
  runApp(const MPApp());
}

class MPApp extends StatelessWidget {
  const MPApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.amber.shade700,
        ),
        useMaterial3: true,
      ),
      home: const App(),
    );
  }
}
