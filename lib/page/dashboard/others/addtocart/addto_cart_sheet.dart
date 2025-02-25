import 'package:amicons/amicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_1/page/auth/login/widgets/custom_button.dart';
import 'package:flutter_project_1/page/dashboard/home/home_page.dart';

class AddtoCartSheet extends StatelessWidget {
  const AddtoCartSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Align(
          alignment: Alignment.center,
        ),
        Text("Extreme cheese whopper",
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: Color(0xFF172B4D))),
        SizedBox(height: 24),
        Divider(
          color: Color(0xffF4F5F7),
          thickness: 2,
          height: 1,
        ),
        SizedBox(height: 24),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(children: [
              TextFormField(
                  keyboardType: TextInputType.numberWithOptions(),
                  onFieldSubmitted: (value) {},
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Amicons.flaticon_credit_card_sharp_fill,
                      color: Color(0xff979797),
                    ),
                    suffix: Icon(
                      Amicons.remix_checkbox_circle_fill,
                      color: Color(0xff979797),
                    ),
                    filled: true,
                    fillColor: Color(0xffF4F5F7),
                    hintText: '3999 - 1234 - 5678 - 0000',
                    hintStyle: TextStyle(color: Color(0xff172B4D)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.transparent)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.transparent)),
                  )),
              
              SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xffF4F5F7),
                            borderRadius: BorderRadius.circular(15)),
                        child: TextFormField(
                            keyboardType: TextInputType.numberWithOptions(),
                            onFieldSubmitted: (value) {},
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xffF4F5F7),
                              hintText: 'MM/YY',
                              hintStyle: TextStyle(color: Color(0xff7A869A)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide:
                                      BorderSide(color: Colors.transparent)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide:
                                      BorderSide(color: Colors.transparent)),
                            ))),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xffF4F5F7),
                            borderRadius: BorderRadius.circular(15)),
                        child: TextFormField(
                            keyboardType: TextInputType.numberWithOptions(),
                            onFieldSubmitted: (value) {},
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xffF4F5F7),
                              hintText: 'CVC',
                              hintStyle: TextStyle(color: Color(0xff7A869A)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide:
                                      BorderSide(color: Colors.transparent)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide:
                                      BorderSide(color: Colors.transparent)),
                            ))),
                  ),
                ],
              ),
              SizedBox(height: 30),
              CustomButtonWidget(
                  title: 'Add Card',
                  color: Color(0xffEF9F27),
                  onPressed: () {
                    Navigator.pop(context);
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Icon(
                              Amicons.remix_checkbox_circle_fill,
                              color: Color(0xff36B37E),
                              size: 30,
                            ),
                            content: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                      text: "You ordered successfully \n",
                                      style: TextStyle(
                                          color: Color(0xff172B4D),
                                          fontSize: 17,
                                          fontWeight: FontWeight.w700)),
                                  TextSpan(
                                    text:
                                        "You successfully place an order, your order is confirmed and delivered within 20 minutes. Wish you enjoy the food",
                                    style: TextStyle(
                                      color: Color(0xff7A869A),
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                              textAlign: TextAlign.center,
                            ),
                            actions: [
                              Center(
                                child: TextButton(
                                  child: Text(
                                    "KEEP BROWSING",
                                    style: TextStyle(
                                        color: Color(0xffEF9F27),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  onPressed: () {
                                    Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomePage()),
                                      (route) => false,
                                    );
                                  },
                                ),
                              )
                            ],
                          );
                        });
                  }),
              SizedBox(height: 8),
              CustomButtonWidget(
                  title: 'Scan Card',
                  color: Color(0xffF4F5F7),
                  textcolor: Color(0xff172B4D),
                  onPressed: () {}),
            ])),
        SizedBox(height: 24),
      ]),
    );
  }
}
