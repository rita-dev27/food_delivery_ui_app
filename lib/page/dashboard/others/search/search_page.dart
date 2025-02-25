import 'package:amicons/amicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_1/page/dashboard/others/restaurant_details/restaurant_details_page.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Column(children: [
                        SizedBox(height: 52),
                        // Searchbar Burger King
                        Container(
                            decoration: BoxDecoration(
                                color: Color(0xffF4F5F7),
                                borderRadius: BorderRadius.circular(15)),
                            child: TextFormField(
                                onFieldSubmitted: (value) {},
                                decoration: InputDecoration(
                                  suffixIcon: Icon(
                                      Amicons.flaticon_cross_circle_sharp_fill),
                                  filled: true,
                                  fillColor: Color(0xffF4F5F7),
                                  hintText: 'Burger King',
                                  hintStyle:
                                      TextStyle(color: Color(0xff172B4D)),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: BorderSide(
                                          color: Colors.transparent)),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: BorderSide(
                                          color: Colors.transparent)),
                                )))
                      ]))))),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xffF4F5F7), width: 3),
                    borderRadius: BorderRadius.circular(16)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      ListView.builder(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemCount: 10,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                ListTile(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                RestaurantDetailsPage(),
                                          ));
                                    },
                                    visualDensity: VisualDensity.compact,
                                    dense: true,
                                    contentPadding: EdgeInsets.zero,
                                    leading: Image.asset(
                                      'assets/image/searchbarburger.jpg',
                                    ),
                                    title: Padding(
                                      padding: EdgeInsets.only(bottom: 5),
                                      child: Row(
                                        children: [
                                          Flexible(
                                            child: Text(
                                              "Burger King",
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
                                          "2.5 USD",
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
                                              borderRadius:
                                                  BorderRadius.circular(14)),
                                        ),
                                        SizedBox(width: 8),
                                        Text(
                                          "Food",
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xFFAEAEAE),
                                          ),
                                        ),
                                      ],
                                    ),
                                    trailing: Icon(
                                      Amicons.iconly_star_fill,
                                      color: Color(0xffEF9F27),
                                    )),
                                index != 10 - 1
                                    ? Divider(
                                        color: Color(0xffF4F5F7),
                                        thickness: 2,
                                        height: 1,
                                      )
                                    : SizedBox(),
                                SizedBox(height: 10),
                              ],
                            );
                          })
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
