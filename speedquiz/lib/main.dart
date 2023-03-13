import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(Object context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}
