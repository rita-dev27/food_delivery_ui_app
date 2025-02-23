import 'package:amicons/amicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_1/page/dashboard/others/food_details/food_details_widget.dart';

class RestaurantMenuWidget extends StatelessWidget {
  const RestaurantMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> title = [
      'Combo spicy tender',
      'Combo Tender Grill Burger',
      'Combo BBQ Bacon Cheese Burger'
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            'Popular Items',
            style: TextStyle(
                color: Color(0xff172B4D),
                fontSize: 17,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 20),
        Container(
          height: 250,
          width: double.infinity,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: 10,
              physics: BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.only(
                    left: 16,
                    right: (index == 10 - 1) ? 16 : 0,
                  ),
                  child: GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                            isScrollControlled: true,
                            useSafeArea: true,
                            showDragHandle: true,
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30))),
                            context: context,
                            builder: (BuildContext context) {
                              return FoodDetailsWidget();
                            });
                      },
                      child: Container(
                        width: 147,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/image/restaurantburger.jpg',
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
                                    'Extreme cheese whopper JR',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: Color(0xff172B4D),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                SizedBox(width: 4),
                              ],
                            ),
                            SizedBox(height: 4),
                            Row(
                              children: [
                                Text(
                                  '\$ 5.99',
                                  style: TextStyle(
                                      color: Color(0xff00875A), fontSize: 16),
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
                                    'Burger',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: Color(0xff7A869A), fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 12),
                          ],
                        ),
                      )),
                );
              }),
        ),
        Divider(
          color: Color(0xffF4F5F7),
          thickness: 2,
          height: 1,
        ),
        SizedBox(height: 30),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hot Burger Combo',
                style: TextStyle(
                    color: Color(0xff172B4D),
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: 3,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(children: [
                      ListTile(
                        onTap: () {},
                        visualDensity: VisualDensity.compact,
                        dense: true,
                        contentPadding: EdgeInsets.zero,
                        leading: Image.asset(
                          'assets/image/restaurantcomboburger.jpg',
                        ),
                        title: Padding(
                          padding: EdgeInsets.only(bottom: 5),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  'Combo spicy tender',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF172B4D),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        subtitle: Row(
                          children: [
                            Text(
                              "\$ 10.15",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFEF9F27),
                              ),
                            ),
                            SizedBox(width: 8),
                            Container(
                              height: 2,
                              width: 2,
                              decoration: BoxDecoration(
                                  color: Color(0xFFAEAEAE),
                                  borderRadius: BorderRadius.circular(14)),
                            ),
                            SizedBox(width: 8),
                            Text(
                              "Burger combo",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFFAEAEAE),
                              ),
                            ),
                          ],
                        ),
                        trailing: index != 1 - 1
                            ? Icon(
                                Amicons.iconly_star_fill,
                                color: Color(0xffC1C7D0),
                              )
                            : Icon(
                                Amicons.iconly_star_fill,
                                color: Color(0xffFF991F),
                              ),
                      ),
                      index != 3 - 1
                          ? Divider(
                              color: Color(0xffF4F5F7),
                              thickness: 2,
                              height: 1,
                            )
                          : SizedBox(),
                      SizedBox(height: 10)
                    ]);
                  }),
              SizedBox(height: 20),
              Divider(
                color: Color(0xffF4F5F7),
                thickness: 2,
                height: 1,
              ),
              SizedBox(height: 20),
              Text(
                'Fried Chicken',
                style: TextStyle(
                    color: Color(0xff172B4D),
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: 3,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(children: [
                      ListTile(
                        onTap: () {},
                        visualDensity: VisualDensity.compact,
                        dense: true,
                        contentPadding: EdgeInsets.zero,
                        leading: Image.asset(
                          'assets/image/friedchicken.jpg',
                        ),
                        title: Padding(
                          padding: EdgeInsets.only(bottom: 5),
                          child: Row(
                            children: [
                              Flexible(
                                child: Text(
                                  'Chicken BBQ',
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF172B4D),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        subtitle: Row(
                          children: [
                            Text(
                              "\$ 10.15",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFEF9F27),
                              ),
                            ),
                            SizedBox(width: 8),
                            Container(
                              height: 2,
                              width: 2,
                              decoration: BoxDecoration(
                                  color: Color(0xFFAEAEAE),
                                  borderRadius: BorderRadius.circular(14)),
                            ),
                            SizedBox(width: 8),
                            Text(
                              "Burger combo",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFFAEAEAE),
                              ),
                            ),
                          ],
                        ),
                        trailing: index == 1 - 1
                            ? Icon(
                                Amicons.iconly_star_fill,
                                color: Color(0xffC1C7D0),
                              )
                            : Icon(
                                Amicons.iconly_star_fill,
                                color: Color(0xffFF991F),
                              ),
                      ),
                      index != 3 - 1
                          ? Divider(
                              color: Color(0xffF4F5F7),
                              thickness: 2,
                              height: 1,
                            )
                          : SizedBox(),
                      SizedBox(height: 10)
                    ]);
                  }),
              SizedBox(height: 20),
            ],
          ),
        )
      ],
    );
  }
}
