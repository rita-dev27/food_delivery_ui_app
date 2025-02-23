import 'package:amicons/amicons.dart';
import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:flutter/material.dart';

class RestaurantReviewTypeWidget extends StatelessWidget {
  final String profile;
  final String name;
  final String time;
  final String review;
  final String likes;

  const RestaurantReviewTypeWidget(
      {super.key,
      required this.profile,
      required this.name,
      required this.time,
      required this.review,
      required this.likes});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      decoration: BoxDecoration(),
      child: Column(
        children: [
          ListTile(
              onTap: () {},
              visualDensity: VisualDensity.compact,
              dense: true,
              contentPadding: EdgeInsets.zero,
              leading: Image.asset(profile),
              title: Text(
                name,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFA172B4D),
                ),
              ),
              subtitle: AnimatedRatingStars(
                initialRating: 5.0,
                minRating: 0.0,
                maxRating: 5.0,
                filledColor: Color(0xffEF9F27),
                emptyColor: Colors.grey,
                filledIcon: Icons.star_border_rounded,
                // halfFilledIcon: Icons.star_half,
                emptyIcon: Icons.star_border_rounded,
                onChanged: (double rating) {
                  // Handle the rating change here
                  print('Rating: $rating');
                },
                displayRatingValue: true,
                interactiveTooltips: true,
                customFilledIcon: Icons.star,
                customHalfFilledIcon: Icons.star_half,
                customEmptyIcon: Icons.star_border_rounded,
                starSize: 14.0,
                animationDuration: Duration(milliseconds: 300),
                animationCurve: Curves.easeInOut,
                readOnly: false,
              ),
              trailing: Text(time,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF7A869A),
                  ))),
          SizedBox(height: 9),
          Text(review,
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF172B4D),
              )),
          ListTile(
              onTap: () {},
              visualDensity: VisualDensity.compact,
              dense: true,
              contentPadding: EdgeInsets.zero,
              leading: Icon(Amicons.remix_heart3_fill,
                  size: 18, color: Color(0xFFEF9F27)),
              title: Text(
                likes,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFEF9F27),
                ),
              ),
              trailing: Icon(
                Icons.flag_rounded,
                size: 20,
                color: Color(0xFFC1C7D0),
              )),
          SizedBox(),
        ],
      ),
    );
  }
}
