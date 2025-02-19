import 'dart:math';

import 'package:amicons/amicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_1/page/home/home_page.dart';
import 'package:flutter_project_1/page/home/widgets/catagory_widget.dart';
import 'package:flutter_project_1/page/home/widgets/food_card_items_widget.dart';
import 'package:flutter_project_1/page/home/widgets/food_card_widget.dart';

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key});
  @override
  Widget build(BuildContext context) {
    List<String> namelist = [
      "Sandwich",
      "Pizza",
      "Burgers",
      "Sandwich",
      "Pizza",
      "Burgers"
    ];
    List<String> imagelist = [
      "assets/image/dashboard_1.jpg",
      "assets/image/pizza.jpg",
      "assets/image/burger.jpg",
      "assets/image/dashboard_1.jpg",
      "assets/image/pizza.jpg",
      "assets/image/burger.jpg",
    ];
    List<String> foodimagelist = [
      'assets/image/subway.jpg',
      'assets/image/tacobell.jpg',
      'assets/image/subway.jpg',
      'assets/image/subway.jpg',
    ];
    
    List<String> foodnamelist = ['Subway', 'Taco Bell', 'Subway', 'Subway'];
    List<String> modelist = ['Open', 'Close', 'Open', 'Open'];
    List<String> distancelist = ['1.5km', '0.2 km', '1.5km', '1.5km'];

    return Scaffold(
      backgroundColor: Color(0xffF4F5F7),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35))),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    SizedBox(height: 52),
                    // Search on Coody
                    Container(
                      decoration: BoxDecoration(
                          color: Color(0xffF4F5F7),
                          borderRadius: BorderRadius.circular(15)),
                      child: TextFormField(
                        onFieldSubmitted: (value) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Amicons.iconly_location_fill,
                            color: Color(0xffC1C7D0),
                          ),
                          filled: true,
                          fillColor: Color(0xffF4F5F7),
                          hintText: 'Search on Coody',
                          hintStyle: TextStyle(color: Color(0xffC1C7D0)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                        ),
                      ),
                    ),
                    SizedBox(height: 24),
                    // Deliver to
                    ListTile(
                      contentPadding: EdgeInsets.all(0),
                      leading: Icon(
                        Amicons.remix_navigation_fill,
                        color: Color(0xffC1C7D0),
                      ),
                      title: Text('Delivery to',
                          style: TextStyle(color: Color(0xffEF9F27))),
                      subtitle: Row(
                        children: [
                          Flexible(
                            child: Text('1014 Prospect Vall',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: TextStyle(
                                    color: Color(0xff172B4D), fontSize: 16)),
                          ),
                          Icon(
                            Amicons.remix_arrow_down_s_fill,
                            color: Color(0xffEF9F27),
                          )
                        ],
                      ),
                      trailing: Container(
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Color(0xffF4F5F7),
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.all(0),
                          child: Row(
                            children: [
                              SizedBox(width: 8),
                              Icon(
                                Amicons.lucide_slucideders_vertical,
                                size: 20,
                                color: Color(0xffC1C7D0),
                              ),
                              SizedBox(width: 4),
                              Text(
                                'Filter',
                                style: TextStyle(
                                    color: Color(0xff172B4D), fontSize: 12),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 24),
                    // Small contsiner
                    Container(
                      height: 5,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xffF4F5F7),
                          borderRadius: BorderRadius.circular(100)),
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  // Category
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15))),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 16),
                          child: Row(
                            children: [
                              Text(
                                'Category',
                                style: TextStyle(
                                    color: Color(0xff172B4D),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Text(
                                'See all',
                                style: TextStyle(
                                  color: Color(0xff172B4D),
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: Color(0xffF4F5F7),
                          thickness: 2,
                          height: 1,
                        ),
                        SizedBox(height: 20),
                        // Category listview
                        Container(
                          padding: const EdgeInsets.only(left: 16),
                          height: 160,
                          child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: namelist.length,
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 16),
                                child: Container(
                                  width: 90,
                                  child: CatagoryWidget(
                                      image: imagelist[index],
                                      color: Color(0xff172B4D),
                                      name: namelist[index]),
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 16),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  // Best partners
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 16),
                          child: Row(
                            children: [
                              Text(
                                'Best Partners',
                                style: TextStyle(
                                    color: Color(0xff172B4D),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              Text(
                                'See all',
                                style: TextStyle(
                                  color: Color(0xff172B4D),
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: Color(0xffF4F5F7),
                          thickness: 2,
                          height: 1,
                        ),
                        SizedBox(height: 20),
                        // card design
                        Container(
                          padding: const EdgeInsets.only(left: 16),
                          height: 264,
                          child: ListView.builder(
                              physics: BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemCount: distancelist.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 16),
                                  child: FoodCardWidget(
                                    foodimage: foodimagelist[index],
                                    name: foodnamelist[index],
                                    mode: modelist[index],
                                    distance: distancelist[index],
                                  ),
                                );
                              }),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  // Burger king
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(
                      horizontal: 18,
                    ),
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 10,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 16),
                            child: Column(children: [
                              FoodCardItemsWidget(
                                  image: 'assets/image/burgerimage.jpg',
                                  name: 'Burger King $index',
                                  mode: 'Open',
                                  item1: 'Burger',
                                  item2: 'Rice',
                                  item3: 'Spaghetti',
                                  rate: '4.8',
                                  distance: '2.6 km'),
                              SizedBox(height: 16),
                              index != 5
                                  ? Divider(
                                      color: Color(0xffF4F5F7),
                                      thickness: 2,
                                      height: 1,
                                    )
                                  : SizedBox()
                            ]),
                          );
                        }),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
