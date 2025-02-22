import 'package:amicons/amicons.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class RestaurantReviewTypeWidget extends StatelessWidget {
  const RestaurantReviewTypeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: () {},
          visualDensity: VisualDensity.compact,
          dense: true,
          contentPadding: EdgeInsets.zero,
          leading: CachedNetworkImage(
              imageUrl:
                  "https://static.vecteezy.com/system/resources/thumbnails/036/324/708/small/ai-generated-picture-of-a-tiger-walking-in-the-forest-photo.jpg",
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
              useOldImageOnUrlChange: true),
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
    );
  }
}
