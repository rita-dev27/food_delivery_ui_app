import 'package:amicons/amicons.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class RestaurantReviewWidget extends StatelessWidget {
  const RestaurantReviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 208, 12, 12),
      ),
      child: Column(
        children: [
          ListTile(
            onTap: () {},
            visualDensity: VisualDensity.compact,
            dense: true,
            contentPadding: EdgeInsets.zero,
            leading: CachedNetworkImage(
              imageUrl: "https://imgur.com/a/FUbHXsx",
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
            title: Text(
              "Title",
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: Color(0xFFAEAEAE),
              ),
            ),
            subtitle: Text(
              "Subtitle",
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: Color(0xFFAEAEAE),
              ),
            ),
            trailing: Icon(
              Amicons.vuesax_notification_1,
              size: 10,
              color: Color(0xFF030712),
            ),
          ),
        ],
      ),
    );
  }
}
