import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_1/page/auth/register/register_page.dart';

class ImageTextTileWidget extends StatelessWidget {
  final String image;
  final String heading;
  final String title;
  final String subtitle;
  final String highlightedsubtitle;

  const ImageTextTileWidget(
      {super.key,
      required this.image,
      required this.heading,
      required this.title,
      required this.subtitle,
      required this.highlightedsubtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 14),
        Image.asset(
          image,
        ),

        SizedBox(height: 30),
        // Welcome back
        Text(
          heading,
          style: TextStyle(
              color: Color(0xff172B4D),
              fontSize: 26,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 6),
        // Different text
        (title != '')
            ? Text(
                title,
                style: TextStyle(
                  color: Color(0xff7A869A),
                  fontSize: 14,
                ),
              )
            : SizedBox(),
        Text.rich(TextSpan(children: [
          TextSpan(
            text: subtitle,
            style: TextStyle(
              color: Color(0xff7A869A),
              fontSize: 14,
            ),
          ),
          TextSpan(
            text: highlightedsubtitle,
            style: TextStyle(
              color: Color(0xffEF9F27),
              fontSize: 14,
            ),
          ),
        ])),
      ],
    );
  }
}
