import 'package:amicons/amicons.dart';
import 'package:flutter/material.dart';

class FoodCardItemsWidget extends StatelessWidget {
  final String image;
  final String name;
  final String mode;
  final String item1;
  final String item2;
  final String item3;
  final String rate;
  final String distance;
  final Function() onTap;
  const FoodCardItemsWidget(
      {super.key,
      required this.image,
      required this.name,
      required this.mode,
      required this.item1,
      required this.item2,
      required this.item3,
      required this.rate,
      required this.distance,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        color: Color(0xffFFFFFF),
        child: Column(
          children: [
            Image.asset(
              image,
              fit: BoxFit.fill,
              height: 172,
              width: double.infinity,
            ),
            SizedBox(height: 16),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Text(
                    name,
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
                  mode,
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
                Text(
                  item1,
                  style: TextStyle(color: Color(0xff7A869A), fontSize: 16),
                ),
                SizedBox(width: 9),
                CircleAvatar(
                  backgroundColor: Color(
                    0xffC1C7D0,
                  ),
                  radius: 2,
                ),
                SizedBox(width: 8),
                Text(
                  item2,
                  style: TextStyle(color: Color(0xff7A869A), fontSize: 16),
                ),
                SizedBox(width: 9),
                CircleAvatar(
                  backgroundColor: Color(
                    0xffC1C7D0,
                  ),
                  radius: 2,
                ),
                SizedBox(width: 8),
                Text(
                  item3,
                  style: TextStyle(color: Color(0xff7A869A), fontSize: 16),
                ),
              ],
            ),
            SizedBox(height: 12),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  decoration: BoxDecoration(
                      color: Color(0xffEF9F27),
                      borderRadius: BorderRadius.circular(900)),
                  child: Row(
                    children: [
                      SizedBox(width: 6),
                      Icon(
                        Amicons.iconly_star_fill,
                        color: Color(0xffFFFFFF),
                        size: 16,
                      ),
                      SizedBox(width: 4),
                      Text(
                        rate,
                        style: TextStyle(color: Color(0xffFFFFFF)),
                      ),
                      SizedBox(width: 6),
                    ],
                  ),
                ),
                SizedBox(width: 8),
                CircleAvatar(
                  backgroundColor: Color(
                    0xffC1C7D0,
                  ),
                  radius: 2,
                ),
                SizedBox(width: 8),
                Icon(
                  Amicons.iconly_location_fill,
                  color: Color(0xffC1C7D0),
                  size: 16,
                ),
                SizedBox(width: 10),
                Text(
                  distance,
                  style: TextStyle(color: Color(0xff172B4D)),
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  backgroundColor: Color(
                    0xffC1C7D0,
                  ),
                  radius: 2,
                ),
                SizedBox(width: 6),
                Icon(
                  Amicons.flaticon_dollar_rounded_fill,
                  color: Color(0xffC1C7D0),
                  size: 16,
                ),
                SizedBox(width: 8),
                Text(
                  'Free shipping',
                  style: TextStyle(color: Color(0xff172B4D)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
