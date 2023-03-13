import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200,
            color: Colors.blue,
          ),
          Container(
            height: 200,
            color: Colors.red,
          ),
          Container(
            height: 200,
            alignment: Alignment.center,
            color: Colors.green,
            child: const Text(
              "Speed Quiz",
              style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
            ),
          ),
        ],
      ),
    );
  }
}
