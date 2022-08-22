import 'package:flutter/material.dart';
import 'package:cally/constants/colors.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: const [
              SizedBox(height: 25.0),
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage("assets/images/avatars/male/geek.png"),
              ),
              SizedBox(height: 20.0),
              Text(
                "Iheb",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26.0,
                ),
              ),
            ],
          ),
          Column(
            children: [
              const Text(
                "08:15",
                style: TextStyle(
                  fontSize: 48.0,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 5.0),
              const Text(
                "You have 10 minutes to chat with your match",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.white70,
                ),
              ),
              const SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: accentColor,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: IconButton(
                      iconSize: 35.0,
                      icon: const Icon(
                        IconlyBold.danger,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: IconButton(
                      iconSize: 35.0,
                      icon: const Icon(
                        IconlyBold.callMissed,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20.0)
            ],
          ),
        ],
      ),
    );
  }
}
