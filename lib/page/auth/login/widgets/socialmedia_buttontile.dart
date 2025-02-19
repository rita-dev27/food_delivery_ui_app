import 'package:flutter/material.dart';

class SocialMediaButtonWidget extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String textmedia;
  final Color backgroundColor;

  const SocialMediaButtonWidget(
      {super.key,
      required this.icon,
      required this.color,
      required this.textmedia,
      required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      child: ElevatedButton.icon(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              backgroundColor: backgroundColor),
          icon: Icon(
            icon,
            color: color,
            size: 34,
          ),
          label: Center(
            child: Text(
              textmedia,
              style: TextStyle(fontSize: 16, color: Color(0xff172B4D)),
            ),
          )),
    );
  }
}
