import 'package:flutter/material.dart';
import 'package:cally/constants/colors.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text("Messages"),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: backgroundColor,
      ),
    );
  }
}
