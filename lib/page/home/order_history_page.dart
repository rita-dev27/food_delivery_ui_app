import 'package:amicons/amicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_1/page/home/home_page.dart';

class OrderHistoryPage extends StatelessWidget {
  const OrderHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xffF4F5F7),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(146),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
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
                            borderSide: BorderSide(color: Colors.transparent)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.transparent)),
                      ),
                    ),
                  ),
                  SizedBox(height: 17),
                  TabBar(
                      dividerColor: Colors.transparent,
                      labelColor: Color(0xffEF9F27),
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorColor: Color(0xffEF9F27),
                      tabs: [
                        Tab(text: 'Ongoing'),
                        Tab(
                          text: 'History',
                        ),
                      ])
                ],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 16),
              // Food card
              ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Drink',
                                    style: TextStyle(
                                        color: Color(0xff7A869A), fontSize: 14),
                                  ),
                                  SizedBox(width: 12),
                                  Container(
                                      height: 12,
                                      width: 1,
                                      decoration: BoxDecoration(
                                        color: Color(0xffF4F5F7),
                                        borderRadius:
                                            BorderRadius.circular(0.5),
                                      )),
                                  SizedBox(width: 12),
                                  Text(
                                    'Completed',
                                    style: TextStyle(
                                        color: Color(0xff00875A), fontSize: 14),
                                  ),
                                  SizedBox(width: 4),
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        'Tuesday, 03 March 2023',
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color: Color(0xff7A869A),
                                            fontSize: 14),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 16),
                              Divider(
                                color: Color(0xffF4F5F7),
                                thickness: 2,
                                height: 1,
                              ),
                              SizedBox(height: 16),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/image/starbuckscup.jpg',
                                    height: 80,
                                    width: 80,
                                  ),
                                  SizedBox(width: 12),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Flexible(
                                              child: Text(
                                                'Starbucks',
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                    color: Color(0xff172B4D)),
                                              ),
                                            ),
                                            SizedBox(width: 5),
                                            Icon(
                                                Amicons.remix_shield_check_fill)
                                          ],
                                        ),
                                        SizedBox(height: 2),
                                        Text(
                                          '8700 Beverly, CA 90048',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: Color(0xff172B4D)),
                                        ),
                                        SizedBox(height: 2),
                                        Row(
                                          children: [
                                            Icon(Amicons.lucide_dollar_sign,
                                                size: 14,
                                                color: Color(0xffEF9F27)),
                                            Text(
                                              '40',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  color: Color(0xffEF9F27)),
                                            ),
                                            SizedBox(width: 8),
                                            Container(
                                              height: 2,
                                              width: 2,
                                              decoration: BoxDecoration(
                                                  color: Color(0xffC1C7D0),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50)),
                                            ),
                                            SizedBox(width: 9),
                                            Text(
                                              '2 items',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                  color: Color(0xff7A869A)),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 16),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 44,
                                      width: 150,
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Color(0xffEBECF0),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12))),
                                          onPressed: () {},
                                          child: Text(
                                            'Rate',
                                            style: TextStyle(
                                                color: Color(0xff172B4D)),
                                          )),
                                    ),
                                  ),
                                  SizedBox(width: 11),
                                  Expanded(
                                    child: Container(
                                      height: 44,
                                      width: 150,
                                      child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Color(0xffEF9F27),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12))),
                                          onPressed: () {},
                                          child: Text(
                                            'Re-Order',
                                            style: TextStyle(
                                                color: Color(0xffFFFFFF)),
                                          )),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
