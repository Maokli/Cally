import 'package:flutter/material.dart';
import 'package:cally/constants/colors.dart';
import 'package:cally/screens/landing/random/search/search_screen.dart';
import 'package:cally/screens/landing/random/call/call_screen.dart';
import 'package:cally/screens/landing/random/start/start_screen.dart';

class RandomScreen extends StatelessWidget {
  const RandomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text("Random Match"),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: backgroundColor,
      ),
      body: const StartScreen(),
    );
  }
}
