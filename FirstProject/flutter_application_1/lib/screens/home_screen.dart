import 'dart:async';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const tfm = 1500;
  int totalSeconds = tfm;
  bool isRunning = false;
  int totalPomodoros = 0;
  late Timer timer;

  void onTick(Timer timer) {
    if (totalSeconds == 0) {
      timer.cancel();
      setState(() {
        totalPomodoros += 1;
        totalSeconds = tfm;
        isRunning = false;
      });
    } else {
      setState(() {
        totalSeconds -= 1;
      });
    }
  }

  void onStartPressed() {
    timer = Timer.periodic(const Duration(seconds: 1), onTick);

    setState(() {
      isRunning = !isRunning;
    });
  }

  void onPausePressed() {
    timer.cancel();
    setState(() {
      isRunning = false;
    });
  }

  void onResetPressed() {
    setState(() {
      totalPomodoros = 0;
      totalSeconds = tfm;
    });
    onPausePressed();
  }

  String format(int seconds) {
    var duration = Duration(seconds: seconds);
    return duration.toString().split('.').first.substring(2, 7);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(children: [
        Flexible(
          flex: 1,
          child: Container(
            alignment: Alignment.bottomCenter,
            child: Text(
              format(totalSeconds),
              style: TextStyle(
                color: Theme.of(context).cardColor,
                fontSize: 87,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        Flexible(
          flex: 2,
          child: Column(
            children: [
              IconButton(
                  icon: Icon(isRunning
                      ? Icons.pause_circle_outline
                      : Icons.play_circle_outline),
                  iconSize: 80,
                  color: Theme.of(context).cardColor,
                  onPressed: isRunning ? onPausePressed : onStartPressed),
              const SizedBox(height: 40),
              IconButton(
                  icon: const Icon(Icons.restart_alt_outlined),
                  iconSize: 80,
                  color: Theme.of(context).cardColor,
                  onPressed: onResetPressed),
            ],
          ),
        ),
        Flexible(
          flex: 1,
          child: Row(
            children: [
              Expanded(
                // 화면 끝까지 확장
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Pomodoros',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color:
                                Theme.of(context).textTheme.headline1!.color),
                      ),
                      Text(
                        '$totalPomodoros',
                        style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.w600,
                            color:
                                Theme.of(context).textTheme.headline1!.color),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
