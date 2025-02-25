import 'package:amicons/amicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_1/page/auth/login/widgets/custom_button.dart';
import 'package:flutter_project_1/page/dashboard/others/addtocart/addto_cart_sheet.dart';

class AddToCartPage extends StatefulWidget {
  const AddToCartPage({super.key});

  @override
  State<AddToCartPage> createState() => _AddToCartPageState();
}

class _AddToCartPageState extends State<AddToCartPage> {
  int itemcount = 1;
  int itemcount2 = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF4F5F7),
        bottomNavigationBar: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            color: Colors.white,
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              SizedBox(height: 20),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xFFFFEBE5),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            )),
                        child: Padding(
                            padding:
                                EdgeInsets.only(left: 16, top: 8, bottom: 8),
                            child: ListTile(
                                onTap: () {},
                                visualDensity: VisualDensity.compact,
                                dense: true,
                                contentPadding: EdgeInsets.zero,
                                leading: Image.asset(
                                  'assets/image/paypal_icon.jpg',
                                  height: 20,
                                  width: 20,
                                ),
                                title: Text(
                                  "\$ 36.98",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFFEF9F27),
                                  ),
                                ),
                                subtitle: Text("Paypal",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(232, 188, 123, 1),
                                    )))))),
                SizedBox(width: 15),
                Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFF4F5F7),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                        child: Padding(
                            padding:
                                EdgeInsets.only(left: 16, top: 8, bottom: 8),
                            child: ListTile(
                                onTap: () {},
                                visualDensity: VisualDensity.compact,
                                dense: true,
                                contentPadding: EdgeInsets.zero,
                                leading: Image.asset(
                                  'assets/image/dollar_image.jpg',
                                  height: 20,
                                  width: 20,
                                ),
                                title: Text(
                                  "\$ 36.98",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF172B4D),
                                  ),
                                ),
                                subtitle: Text("Cash",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff7A869A),
                                    ))))))
              ]),
              SizedBox(height: 20),
              CustomButtonWidget(
                  title: 'Submit',
                  color: Color(0xffEF9F27),
                  onPressed: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        showDragHandle: true,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30))),
                        context: context,
                        builder: (BuildContext context) {
                          return Padding(
                            padding: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).viewInsets.bottom),
                            child: AddtoCartSheet(),
                          );
                        });
                  })
            ])),
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
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(children: [
            SizedBox(height: 15),
            // Delivery to
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
                          padding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 16),
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
                                      "(323) 238-0678 \n909-1/2 E 49th St \nLos Angeles, \nCalifornia(CA), 90011",
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 4,
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xFF172B4D),
                                      )),
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
            // Burger King
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
                                  ])),
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
                              leading: Image.asset(
                                  'assets/image/food_detail_bbq.jpg'),
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
                                            itemcount2 > 1
                                                ? itemcount2 = itemcount2 - 1
                                                : null;

                                            setState(() {});
                                          },
                                          child: Icon(
                                            Amicons.vuesax_minus_cirlce,
                                            color: Color.fromARGB(
                                                255, 249, 199, 0),
                                          )),
                                      SizedBox(width: 10),
                                      Text("$itemcount2",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xFF172B4D),
                                          )),
                                      SizedBox(width: 10),
                                      GestureDetector(
                                        onTap: () {
                                          itemcount2 = itemcount2 + 1;
                                          setState(() {});
                                        },
                                        child: Icon(
                                            Amicons.remix_add_circle_fill,
                                            color: Color.fromARGB(
                                                255, 249, 199, 0)),
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
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Column(children: [
                          SizedBox(height: 16),
                          Row(children: [
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
                          ]),
                          SizedBox(height: 16),
                          Divider(
                            color: Color(0xffF4F5F7),
                            thickness: 2,
                            height: 1,
                          ),
                          SizedBox(height: 16),
                          Row(children: [
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
                          ]),
                          SizedBox(height: 16),
                          Divider(
                            color: Color(0xffF4F5F7),
                            thickness: 2,
                            height: 1,
                          ),
                          SizedBox(height: 16),
                          Row(children: [
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
                          ]),
                          SizedBox(height: 16),
                          Divider(
                            color: Color(0xffF4F5F7),
                            thickness: 2,
                            height: 1,
                          ),
                          SizedBox(height: 16),
                          Row(children: [
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
                          ]),
                          SizedBox(height: 16),
                        ]),
                      )
                    ])),
            SizedBox(height: 20),
            // Add Voucher
            Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: Row(children: [
                        Icon(
                          Amicons.remix_percent,
                          size: 20,
                          color: Color(0xffEF9F27),
                        ),
                        SizedBox(width: 10),
                        Flexible(
                            child: Text("Add Voucher",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 3,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF172B4D),
                                )))
                      ])),
                      Row(children: [
                        SizedBox(width: 4),
                        SizedBox(
                            height: 36,
                            child: TextButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      WidgetStatePropertyAll(Color(0xffFFEBE5)),
                                ),
                                onPressed: () {},
                                child: Text("Add",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w200,
                                      color: Color(0xFFEF9F27),
                                    ))))
                      ])
                    ])),
            SizedBox(height: 15),
          ]),
        )));
  }
}
