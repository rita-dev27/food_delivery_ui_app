import 'package:amicons/amicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_1/page/home/home_page.dart';

class CardListPage extends StatelessWidget {
  const CardListPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> cardlist = [
      'assets/image/cardlogo.jpg',
      'assets/image/mastercardlogo.jpg',
      'assets/image/paypallogo.jpg',
      'assets/image/cardlogo.jpg',
      'assets/image/mastercardlogo.jpg',
      'assets/image/paypallogo.jpg'
    ];
    List<String> titlelist = [
      'Visa',
      'MasterCard',
      'Paypal',
      'Visa',
      'MasterCard',
      'Paypal'
    ];
    List<String> subtitlelist = [
      'Enter information on the card',
      'Enter information on the card',
      'Enter email Paypal',
      'Enter information on the card',
      'Enter information on the card',
      'Enter email Paypal'
    ];
    List<IconData> iconlist = [
      Amicons.remix_arrow_right_s,
      Amicons.remix_arrow_right_s,
      Amicons.remix_arrow_right_s
    ];

    return Scaffold(
        backgroundColor: Color(0xffF4F5F7),
        body: Padding(
            padding: EdgeInsets.only(top: 60),
            child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.white,
                ),
                child: Column(children: [
                  SizedBox(height: 16),
                  SizedBox(height: 16),
                  Text("Payment Methods",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF172B4D),
                      )),
                  SizedBox(height: 20),
                  Divider(
                    color: Color(0xffF4F5F7),
                    thickness: 2,
                    height: 1,
                  ),
                  SizedBox(height: 35),
                  Image.asset(
                    'assets/image/paymentsmethod.jpg',
                    height: 80,
                    width: 90,
                  ),
                  SizedBox(height: 50),
                  Text("Don’t have any card",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF172B4D),
                      )),
                  SizedBox(height: 3),
                  Text("It looks like you don’t have a credit or debit card ",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF7A869A),
                      )),
                  Text("yet. Please add your cards.",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF7A869A),
                      )),
                  SizedBox(height: 40),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: Color(0xFFF4F5F7),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10))),
                      child: Column(
                        children: [
                          SizedBox(height: 16),
                          Container(
                            height: 5,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Color(0xff979797),
                                borderRadius: BorderRadius.circular(100)),
                          ),
                          SizedBox(height: 12),
                          Expanded(
                            child: ListView.builder(
                              physics: BouncingScrollPhysics(),
                              itemCount: titlelist.length,
                              shrinkWrap: true,
                              itemBuilder: (BuildContext context, int index) {
                                return Column(children: [
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF4F5F7),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      ),
                                    ),
                                    child: ListTile(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    HomePage()),
                                          );
                                        },
                                        visualDensity: VisualDensity.compact,
                                        dense: true,
                                        contentPadding: EdgeInsets.zero,
                                        leading: Image.asset(cardlist[index]),
                                        title: Text(titlelist[index],
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xFF172B4D),
                                            )),
                                        subtitle: Text(
                                          subtitlelist[index],
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xFF7A869A),
                                          ),
                                        ),
                                        trailing: Icon(
                                          Amicons.remix_arrow_right_s,
                                          size: 26,
                                          color: Color(0xFFC1C7D0),
                                        )),
                                  ),
                                  SizedBox(height: 10),
                                ]);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]))));
  }
}
