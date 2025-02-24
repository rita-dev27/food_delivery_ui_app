import 'package:amicons/amicons.dart';
import 'package:flutter/material.dart';

class AddToCartPage extends StatefulWidget {
  const AddToCartPage({super.key});

  @override
  State<AddToCartPage> createState() => _AddToCartPageState();
}

class _AddToCartPageState extends State<AddToCartPage> {
  int itemcount = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF4F5F7),
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Amicons.remix_arrow_left_s,
                size: 26, color: Color(0xFF030712)),
          ),
          centerTitle: true,
          title: Text("Confirm Order",
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
                color: Color(0xFF172B4D),
              )),
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          SizedBox(height: 15),
          Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  )),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                        child: Row(children: [
                          Text(
                            'Delivery to',
                            style: TextStyle(
                                color: Color(0xff172B4D),
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                        ])),
                    Divider(
                      color: Color(0xffF4F5F7),
                      thickness: 2,
                      height: 1,
                    ),
                    Padding(
                        padding: EdgeInsets.all(20),
                        child: Row(children: [
                          Image.asset('assets/image/addto_card_map.jpg',
                              height: 80, width: 80),
                          SizedBox(width: 12),
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    "(323) 238-0678 \n909-1/2 E 49th St \nLos Angeles, California(CA), 90011",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 3,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFF172B4D),
                                    )),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(Amicons.iconly_location_fill,
                                          color: Color(0xffC1C7D0)),
                                      Text("1.5 km",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xff7A869A),
                                          ))
                                    ])
                              ])
                        ]))
                  ])),
          SizedBox(height: 16),
          Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.all(16),
                        child: Text("Burger King",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff172B4D),
                            ))),
                    Divider(
                      color: Color(0xffF4F5F7),
                      thickness: 2,
                      height: 1,
                    ),
                    SizedBox(height: 12),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: ListTile(
                          onTap: () {},
                          visualDensity: VisualDensity.compact,
                          dense: true,
                          contentPadding: EdgeInsets.zero,
                          leading: Image.asset(
                              'assets/image/food_detail_burger.jpg'),
                          title: Text(
                            "Prime Beef - Pizza Beautifu…",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF172B4D),
                            ),
                          ),
                          subtitle: Row(children: [
                            Container(
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: Color(0xFFF4F5F7),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                              ),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      itemcount > 1
                                          ? itemcount = itemcount - 1
                                          : null;

                                      setState(() {});
                                    },
                                    child: Icon(
                                      Amicons.vuesax_minus_cirlce,
                                      color: Color.fromARGB(255, 249, 199, 0),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text("$itemcount",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFF172B4D),
                                      )),
                                  SizedBox(width: 10),
                                  GestureDetector(
                                    onTap: () {
                                      itemcount = itemcount + 1;
                                      setState(() {});
                                    },
                                    child: Icon(Amicons.remix_add_circle_fill,
                                        color:
                                            Color.fromARGB(255, 249, 199, 0)),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: 16),
                            Text("\$ 20.99",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFFEF9F27),
                                )),
                          ])),
                    ),
                    SizedBox(height: 20),
                    Divider(
                      color: Color(0xffF4F5F7),
                      thickness: 2,
                      height: 1,
                    ),
                    SizedBox(height: 12),
                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: ListTile(
                            onTap: () {},
                            visualDensity: VisualDensity.compact,
                            dense: true,
                            contentPadding: EdgeInsets.zero,
                            leading:
                                Image.asset('assets/image/food_detail_bbq.jpg'),
                            title: Text(
                              "Double BBQ bacon cheese burger",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF172B4D),
                              ),
                            ),
                            subtitle: Row(children: [
                              Container(
                                  padding: EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF4F5F7),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                  ),
                                  child: Row(children: [
                                    GestureDetector(
                                        onTap: () {
                                          itemcount > 1
                                              ? itemcount = itemcount - 1
                                              : null;

                                          setState(() {});
                                        },
                                        child: Icon(
                                          Amicons.vuesax_minus_cirlce,
                                          color:
                                              Color.fromARGB(255, 249, 199, 0),
                                        )),
                                    SizedBox(width: 10),
                                    Text("$itemcount",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xFF172B4D),
                                        )),
                                    SizedBox(width: 10),
                                    GestureDetector(
                                      onTap: () {
                                        itemcount = itemcount + 1;
                                        setState(() {});
                                      },
                                      child: Icon(Amicons.remix_add_circle_fill,
                                          color:
                                              Color.fromARGB(255, 249, 199, 0)),
                                    )
                                  ])),
                              SizedBox(width: 16),
                              Text("\$ 15.99",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFFEF9F27),
                                  )),
                            ]))),
                    SizedBox(height: 20),
                    Divider(
                      color: Color(0xffF4F5F7),
                      thickness: 2,
                      height: 1,
                    ),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        width: double.infinity,
                        color: Color(0xffFFFFFF),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 16),
                                  child: Row(children: [
                                    Text(
                                      'Subtotal (2 items)',
                                      style: TextStyle(
                                          color: Color(0xff172B4D),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Spacer(),
                                    Text('\$ 36.98',
                                        style: TextStyle(
                                          color: Color(0xff172B4D),
                                          fontSize: 16,
                                        ))
                                  ])),
                              Divider(
                                color: Color(0xffF4F5F7),
                                thickness: 2,
                                height: 1,
                              ),
                              Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 16),
                                  child: Row(children: [
                                    Text(
                                      'Delivery',
                                      style: TextStyle(
                                          color: Color(0xff172B4D),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Spacer(),
                                    Text('\$ 0.00',
                                        style: TextStyle(
                                          color: Color(0xff172B4D),
                                          fontSize: 16,
                                        ))
                                  ])),
                              Divider(
                                color: Color(0xffF4F5F7),
                                thickness: 2,
                                height: 1,
                              ),
                              Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 16),
                                  child: Row(children: [
                                    Text(
                                      'Voucher',
                                      style: TextStyle(
                                          color: Color(0xff172B4D),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Spacer(),
                                    Text('-',
                                        style: TextStyle(
                                          color: Color(0xff172B4D),
                                          fontSize: 16,
                                        ))
                                  ])),
                              Divider(
                                color: Color(0xffF4F5F7),
                                thickness: 2,
                                height: 1,
                              ),
                              Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 16),
                                  child: Row(children: [
                                    Text(
                                      'Total',
                                      style: TextStyle(
                                          color: Color(0xff172B4D),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Spacer(),
                                    Text('\$ 36.98',
                                        style: TextStyle(
                                          color: Color(0xffEF9F27),
                                          fontSize: 16,
                                        ))
                                  ])),
                            ]))
                  ])),
          SizedBox(height: 20),
        ])));
  }
}
