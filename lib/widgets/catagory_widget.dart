import 'package:flutter/material.dart';

class CatagoryWidget extends StatelessWidget {
  final String image;
  final Color color;
  final String name;
  const CatagoryWidget(
      {super.key,
      required this.image,
      required this.color,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          height: 110,
        ),
        SizedBox(height: 8),
        Text(
          name,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: color, fontSize: 14),
        )
      ],
    );
  }
}
