import 'package:amicons/amicons.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_1/page/dashboard/others/addtocart/addto_cart_page.dart';

class FoodDetailsWidget extends StatefulWidget {
  const FoodDetailsWidget({super.key});

  @override
  State<FoodDetailsWidget> createState() => _FoodDetailsWidgetState();
}

class _FoodDetailsWidgetState extends State<FoodDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: Container(
            height: 90,
            width: double.infinity,
            color: Colors.white,
            child: Row(children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Price",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF172B4D),
                            )),
                        Text("\$ 5.99",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w300,
                              color: Color(0xFFEF9F27),
                            )),
                      ]),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffEF9F27),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12))),
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddToCartPage()),
                    );
                  },
                  child: Text(
                    "Add to Order",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(
                          0xFFFFFFFF,
                        )),
                  ),
                ),
              ),
              SizedBox(width: 20)
            ])),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30),
              Text("Extreme cheese whopper",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF172B4D))),
              SizedBox(height: 8),
              Text("A signature flame-grilled beef patty",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF7A869A),
                  )),
              Text("topped with smoked bacon.",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF7A869A),
                  )),
              SizedBox(height: 30),
              CarouselSlider(
                  items: [1, 2, 3, 4, 5].map((e) {
                    return Image.asset('assets/image/food_detail_burger.jpg');
                  }).toList(),
                  options: CarouselOptions(
                    height: 200,
                    aspectRatio: 2.0,
                    viewportFraction: 0.7,
                    enlargeCenterPage: true,
                  )),
              SizedBox(height: 30),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(31, 27, 17, 0.20),
                            offset: Offset(0, 7),
                            blurRadius: 30)
                      ]),
                  child: Center(
                    child: Text("S",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF172B4D),
                        )),
                  ),
                ),
                SizedBox(width: 36),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Color(0xffFFC400),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.07999999821186066),
                            offset: Offset(0, 4),
                            blurRadius: 25)
                      ]),
                  child: Center(
                    child: Text("M",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF172B4D),
                        )),
                  ),
                ),
                SizedBox(width: 36),
                Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color:
                                  Color.fromRGBO(0, 0, 0, 0.07999999821186066),
                              offset: Offset(0, 4),
                              blurRadius: 25)
                        ]),
                    child: Center(
                      child: Text("L",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF172B4D),
                          )),
                    ))
              ]),
              SizedBox(height: 55),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffFFF0B3),
                          elevation: 0.0,
                          shadowColor: Colors.transparent,
                          shape: CircleBorder()),
                      onPressed: () {},
                      child: Icon(
                        Amicons.remix_add,
                        color: Color(0xffFF8B00),
                        size: 20,
                      )),
                  SizedBox(width: 16),
                  Text("2",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF172B4D),
                      )),
                  SizedBox(width: 16),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffFFF0B3),
                          elevation: 0.0,
                          shadowColor: Colors.transparent,
                          shape: CircleBorder()),
                      onPressed: () {},
                      child: Icon(
                        Amicons.lucide_minus,
                        color: Color(0xffFF8B00),
                        size: 20,
                      )),
                ],
              ),
            ],
          ),
        ));
  }
}
