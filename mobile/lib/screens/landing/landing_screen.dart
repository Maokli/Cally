import 'package:flutter/material.dart';
import 'package:cally/constants/colors.dart';
import 'package:cally/screens/landing/messages/messages_screen.dart';
import 'package:cally/screens/landing/random/random_screen.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> navigationScreens = [
      const RandomScreen(),
      const MessagesScreen(),
    ];
    return Scaffold(
      backgroundColor: backgroundColor,
      body: navigationScreens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(IconlyLight.call),
            activeIcon: Icon(IconlyBold.call),
            label: ("Random"),
          ),
          BottomNavigationBarItem(
            icon: Icon(IconlyLight.chat),
            activeIcon: Icon(IconlyBold.chat),
            label: ("Messages"),
          ),
        ],
        onTap: (index) => setState(() => currentIndex = index),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: primaryColor,
        unselectedItemColor: accentColor,
        selectedFontSize: 14.0,
        selectedIconTheme: const IconThemeData(size: 30.0),
        unselectedIconTheme: const IconThemeData(size: 28.0),
        showUnselectedLabels: false,
        elevation: 0.0,
        backgroundColor: backgroundColor,
      ),
    );
  }
}
