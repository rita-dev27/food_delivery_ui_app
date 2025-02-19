import 'package:flutter/material.dart';

class OnboardingTileWidget extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  const OnboardingTileWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 135,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Image.asset(
          image,
        ),
      ),
      SizedBox(height: 75),
      Text(
        title,
        style: TextStyle(
          color: Color(0xff172B4D),
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 13),
      Text(
        subtitle,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 10, color: Color(0xff7A869A)),
      ),
      SizedBox(height: 85),
      
    ]);
  }
}
