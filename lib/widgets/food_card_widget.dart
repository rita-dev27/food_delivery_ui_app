import 'package:amicons/amicons.dart';
import 'package:flutter/material.dart';

class FoodCardWidget extends StatelessWidget {
  final String foodimage;
  final String name;
  final String mode;
  final String distance;
  final Function() onTap;

  const FoodCardWidget(
      {super.key,
      required this.foodimage,
      required this.name,
      required this.mode,
      required this.onTap,
      required this.distance});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          width: 232,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                foodimage,
                width: double.infinity,
                height: 116,
                fit: BoxFit.fill,
              ),
              SizedBox(height: 16),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Text(
                      name,
                      maxLines: 2,
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
              SizedBox(height: 4),
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
                  Expanded(
                    child: Text(
                      'Santa Nella, CA 95322 ',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Color(0xff7A869A), fontSize: 16),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                              '4.5',
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
                      SizedBox(width: 9),
                      Text(
                        distance,
                        style: TextStyle(color: Color(0xff172B4D)),
                      ),
                      SizedBox(width: 8),
                      CircleAvatar(
                        backgroundColor: Color(
                          0xffC1C7D0,
                        ),
                        radius: 2,
                      ),
                    ],
                  ),
                  SizedBox(width: 9),
                  Expanded(
                    child: Text(
                      'Free shipping',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Color(0xff172B4D)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
