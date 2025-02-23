import 'package:amicons/amicons.dart';
import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_1/page/dashboard/others/restaurant_details/widgets/restaurant_review_type_widget.dart';

class RestaurantReviewWidget extends StatelessWidget {
  const RestaurantReviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> profile = [
      'assets/image/restaurant_type.jpg',
      'assets/image/restaurant_type2_image.jpg',
      'assets/image/restaurant_type3_image.jpg',
      'assets/image/restaurant_type4_image.jpg'
    ];
    List<String> name = [
      'Eleanor Summers',
      'Victoria Champain',
      'Laura Smith',
      'Dora Perry'
    ];
    List<String> time = [
      'Today, 16:40',
      'Today, 09:12',
      'Yesterday, 16:40',
      'Yesterday, 16:40'
    ];
    List<String> review = [
      "What can I say it's fast food, it's Burger King.No different to any of the other burger kings, nice with adequate seating",
      "Food, as always, is good both upstairs and downstairs is always clean (download the bk app for deals etc.) sit upstairs every time, more relaxed feel.",
      "Amazing food. Lots of choice. We took a while to choose as everything sounded amazing on the menu! All cooked to perfection. Portions were large. Service excellent. Definitely plan to go again and often!",
      "I popped in for a late lunch on Friday after a long morning working. The staff member was rude and unhelpful and the toilets were closed. I will not be returning and suggest others do not either."
    ];
    List<String> likes = ['68 likes', '132 likes', '32 likes', '99 likes'];

    return ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: 4,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              RestaurantReviewTypeWidget(
                profile: profile[index],
                name: name[index],
                time: time[index],
                review: review[index],
                likes: likes[index],
                isPhotoAvailable: index == 1 ? true : false,
              ),
              SizedBox(height: 16),
              index != 4 - 1
                  ? Divider(
                      color: Color(0xffF4F5F7),
                      thickness: 2,
                      height: 1,
                    )
                  : SizedBox(),
              SizedBox(height: 10)
            ],
          );
        });
  }
}


// Row(children: [
          //   Expanded(
          //     child: Image.asset('assets/image/searchbarburger.jpg',
          //         height: 54, width: 54),
          //   ),
          //   SizedBox(width: 8),
          //   Expanded(
          //     child: Image.asset('assets/image/friedchicken.jpg',
          //         height: 54, width: 54),
          //   ),
          //   SizedBox(width: 8),
          //   Expanded(
          //     child: Image.asset('assets/image/restaurantcomboburger.jpg',
          //         height: 54, width: 54),
          //   ),
          //   SizedBox(width: 8),
          //   Expanded(
          //     child: Image.asset('assets/image/restaurantburger.jpg',
          //         height: 54, width: 54),
          //   ),
          //   SizedBox(width: 8),
          //   Container(
          //       width: 54,
          //       height: 54,
          //       decoration: BoxDecoration(
          //           color: Colors.grey,
          //           borderRadius: BorderRadius.only(
          //             topLeft: Radius.circular(10),
          //             topRight: Radius.circular(10),
          //             bottomLeft: Radius.circular(10),
          //             bottomRight: Radius.circular(10),
          //           )),
          //       child: Center(
          //         child: Text("+1",
          //             style: TextStyle(
          //               fontSize: 17,
          //               fontWeight: FontWeight.w700,
          //               color: Colors.black,
          //             )),
          //       ))
          // ]),
          // SizedBox(height: 16),
          // Divider(
          //   color: Color(0xffF4F5F7),
          //   thickness: 2,
          //   height: 1,
          // ),
       