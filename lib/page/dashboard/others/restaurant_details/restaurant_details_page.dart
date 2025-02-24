import 'dart:math';

import 'package:amicons/amicons.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_1/page/dashboard/others/restaurant_details/widgets/restaurant_menu_widget.dart';
import 'package:flutter_project_1/page/dashboard/others/restaurant_details/widgets/restaurant_review_widget.dart';

class RestaurantDetailsPage extends StatefulWidget {
  const RestaurantDetailsPage({super.key});

  @override
  State<RestaurantDetailsPage> createState() => _RestaurantDetailsPageState();
}

class _RestaurantDetailsPageState extends State<RestaurantDetailsPage> {
  int selectedPage = 0;
  List<Widget> pages = [
    RestaurantMenuWidget(),
    RestaurantReviewWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 40,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Amicons.remix_arrow_left_s,
                size: 26, color: Color(0xFF030712)),
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  child: CarouselSlider(
                      items: [1, 2, 3, 4, 5].map((e) {
                        return Container(
                          child:
                              Image.asset('assets/image/restaurantimage.jpg'),
                        );
                      }).toList(),
                      options: CarouselOptions(
                        height: 200,
                        aspectRatio: 2.0,
                        enlargeCenterPage: true,
                      ))),
              SizedBox(height: 30),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Flexible(
                                  child: Text("Burger King",
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 3,
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFF172B4D),
                                      )),
                                ),
                                SizedBox(width: 4),
                                Icon(Amicons.remix_shield_check_fill,
                                    size: 20, color: Color(0xFF00875A)),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(width: 4),
                              SizedBox(
                                  height: 36,
                                  child: TextButton(
                                      style: ButtonStyle(
                                        backgroundColor: WidgetStatePropertyAll(
                                            Color(0xffFFEBE5)),
                                      ),
                                      onPressed: () {},
                                      child: Text("Take Away",
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w200,
                                            color: Color(0xFFEF9F27),
                                          )))),
                              SizedBox(width: 8),
                              Icon(Amicons.vuesax_heart_fill,
                                  size: 20, color: Color(0xFFEF9F27)),
                              SizedBox(width: 8),
                            ],
                          )
                        ]),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Text(
                          'Open',
                          style:
                              TextStyle(color: Color(0xff00875A), fontSize: 16),
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
                            '1453 W Manchester Ave Los Angeles CA 90047',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Color(0xff7A869A), fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Divider(
                      color: Color(0xffF4F5F7),
                      thickness: 2,
                      height: 1,
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
                                '4.5',
                                style: TextStyle(color: Color(0xffFFFFFF)),
                              ),
                              SizedBox(width: 8),
                            ],
                          ),
                        ),
                        SizedBox(width: 12),
                        CircleAvatar(
                          backgroundColor: Color(
                            0xffC1C7D0,
                          ),
                          radius: 2,
                        ),
                        SizedBox(width: 12),
                        Icon(
                          Amicons.vuesax_clock_fill,
                          color: Color(0xffC1C7D0),
                          size: 18,
                        ),
                        SizedBox(width: 9),
                        Text(
                          '15 Mins',
                          style: TextStyle(color: Color(0xff172B4D)),
                        ),
                        SizedBox(width: 12),
                        CircleAvatar(
                          backgroundColor: Color(
                            0xffC1C7D0,
                          ),
                          radius: 2,
                        ),
                        SizedBox(width: 12),
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
                    SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      child: TextButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xffF4F5F7)),
                              shape: (MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              )))),
                          onPressed: () {},
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 24),
                            child: Text.rich(
                              TextSpan(children: [
                                TextSpan(
                                    text: '%  ',
                                    style: TextStyle(
                                        color: Color(0xffEF9F27),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                    text: 'Save \$15.00 with code Total Dish',
                                    style: TextStyle(color: Color(0xff172B4D))),
                              ]),
                            ),
                          )),
                    ),
                    SizedBox(height: 24),
                  ])),
              Divider(
                color: Color(0xffF4F5F7),
                thickness: 2,
                height: 1,
              ),
              TabBar(
                  onTap: (index) {
                    selectedPage = index;
                    setState(() {});
                  },
                  dividerColor: Color(0xffF4F5F7),
                  labelColor: Color(0xffEF9F27),
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: Color(0xffEF9F27),
                  tabs: [
                    Tab(text: 'Delivery'),
                    Tab(text: 'Review'),
                  ]),
              SizedBox(height: 30),
              selectedPage == 0
                  ? RestaurantMenuWidget()
                  : RestaurantReviewWidget()
            ],
          ),
        ),
      ),
    );
  }
}
