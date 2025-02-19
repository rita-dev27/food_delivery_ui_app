import 'package:flutter/material.dart';
import 'package:flutter_project_1/page/auth/login/widgets/custom_button.dart';
import 'package:flutter_project_1/page/dashboard/profile/change_password/change_password_page.dart';

class AccountInfoPage extends StatelessWidget {
  const AccountInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: CustomButtonWidget(
              title: 'Save',
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
      ),
      backgroundColor: Color(0xffF4F5F7),
      body: Padding(
        padding: EdgeInsets.only(top: 60),
        child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              color: Colors.white,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 16),
                  Container(
                    height: 5,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Color(0xffF4F5F7),
                        borderRadius: BorderRadius.circular(100)),
                  ),
                  SizedBox(height: 16),
                  Text("Account information",
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
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        // Full name
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text("Full Name",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFAEAEAE),
                              )),
                        ),
                        SizedBox(height: 14),
                        Container(
                          height: 45,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Color(0xffF4F5F7),
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            children: [
                              SizedBox(width: 16),
                              Text(
                                'Philippe Troussier',
                                style: TextStyle(
                                  color: Color(0xff172B4D),
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 24),
                        Divider(
                          color: Color(0xffF4F5F7),
                          thickness: 2,
                          height: 1,
                        ),
                        SizedBox(height: 14),
                        // Email Address
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text("Email Address",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFAEAEAE),
                              )),
                        ),
                        SizedBox(height: 14),
                        Container(
                          height: 45,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Color(0xffF4F5F7),
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            children: [
                              SizedBox(width: 16),
                              Text(
                                'troussier@gmail.com',
                                style: TextStyle(
                                  color: Color(0xff172B4D),
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 24),
                        Divider(
                          color: Color(0xffF4F5F7),
                          thickness: 2,
                          height: 1,
                        ),
                        SizedBox(height: 14),
                        // Phone Number
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text("Phone Number",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFAEAEAE),
                              )),
                        ),
                        SizedBox(height: 14),
                        Container(
                          height: 45,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Color(0xffF4F5F7),
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            children: [
                              SizedBox(width: 16),
                              Text(
                                '(+1) 6102347305',
                                style: TextStyle(
                                  color: Color(0xff172B4D),
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 24),
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
