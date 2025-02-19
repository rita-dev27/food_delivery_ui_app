import 'package:flutter/material.dart';
import 'package:flutter_project_1/page/auth/login/widgets/custom_button.dart';
import 'package:flutter_project_1/page/dashboard/profile/payment_method/card_payments_page.dart';

class PaymentsMethodPage extends StatelessWidget {
  const PaymentsMethodPage({super.key});

  @override
  Widget build(BuildContext context) {
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
                child: SingleChildScrollView(
                    child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(children: [
                    SizedBox(height: 16),
                    Container(
                      height: 5,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xffF4F5F7),
                          borderRadius: BorderRadius.circular(100)),
                    ),
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          SizedBox(height: 50),
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
                          Text(
                              "It looks like you don’t have a credit or debit card ",
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
                          CustomButtonWidget(
                              title: 'Add Cards',
                              color: Color(0xffEF9F27),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CardPaymentsPage()),
                                );
                              }),
                          SizedBox(height: 40),
                        ],
                      ),
                    )
                  ]),
                )))));
  }
}
