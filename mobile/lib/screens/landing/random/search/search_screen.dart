import 'package:flutter/material.dart';
import 'package:cally/constants/colors.dart';
import 'package:im_animations/im_animations.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ColorSonar(
              contentAreaRadius: 80.0,
              waveMotion: WaveMotion.synced,
              duration: const Duration(seconds: 2),
              child: const CircleAvatar(
                radius: 80.0,
                backgroundImage:
                    AssetImage("assets/images/avatars/female/gamer.png"),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              color: accentColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "02:47",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 10.0),
                RichText(
                  text: const TextSpan(
                    text: "Estimated Waiting Time ",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 18.0,
                    ),
                    children: [
                      TextSpan(
                        text: "14:35",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25.0),
                ConstrainedBox(
                  constraints:
                      const BoxConstraints.tightFor(width: 250, height: 60),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Leave",
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(primaryColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          side: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
