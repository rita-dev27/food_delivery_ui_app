import 'package:amicons/amicons.dart';
import 'package:flutter/material.dart';

class CategoryCardWidget extends StatelessWidget {
  final String image;
  final String title;
  final String sidefood;
  const CategoryCardWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.sidefood});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(children: [
            Image.asset(
              image,
              fit: BoxFit.fill,
              height: 180,
              width: double.infinity,
            ),
            SizedBox(height: 12),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Color(0xff172B4D),
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(width: 4),
                Icon(
                  Amicons.remix_shield_check_fill,
                  color: Color(0xff00875A),
                ),
              ],
            ),
            SizedBox(height: 6),
            Row(
              children: [
                Text(
                  'Open',
                  style: TextStyle(color: Color(0xff00875A), fontSize: 16),
                ),
                SizedBox(width: 8),
                CircleAvatar(
                  backgroundColor: Color(
                    0xffC1C7D0,
                  ),
                  radius: 2,
                ),
                SizedBox(width: 8),
                Flexible(
                  child: Text(
                    sidefood,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Color(0xff7A869A), fontSize: 16),
                  ),
                ),
              ],
            ),
          ]),
        ));
  }
}
