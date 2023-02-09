import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "오늘의 웹툰",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w400,
          ),
        ),
        backgroundColor: Colors.black,
        foregroundColor: Colors.grey, // 음영
        elevation: 2, // 강도
      ),
    );
  }
}
