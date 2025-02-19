import 'package:amicons/amicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_1/page/auth/login/widgets/custom_button.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

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
                  Text("Change Password",
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
                          child: Text("Password",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFAEAEAE),
                              )),
                        ),
                        SizedBox(height: 14),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xffF4F5F7),
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                  color: Color(0xff7A869A), fontSize: 12),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide:
                                      BorderSide(color: Colors.transparent)),
                              suffix: Icon(Amicons.remix_eye_fill,
                                  color: Color(0xff979797)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide:
                                      BorderSide(color: Colors.transparent))),
                        ),

                        SizedBox(height: 24),
                        Divider(
                          color: Color(0xffF4F5F7),
                          thickness: 2,
                          height: 1,
                        ),
                        SizedBox(height: 14),
                        // New Password
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text("New Password",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFAEAEAE),
                              )),
                        ),
                        SizedBox(height: 14),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xffF4F5F7),
                              hintText: 'New Password',
                              hintStyle: TextStyle(
                                  color: Color(0xff7A869A), fontSize: 12),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide:
                                      BorderSide(color: Colors.transparent)),
                              suffix: Icon(Amicons.remix_eye_fill,
                                  color: Color(0xff979797)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide:
                                      BorderSide(color: Colors.transparent))),
                        ),

                        SizedBox(height: 24),
                        Divider(
                          color: Color(0xffF4F5F7),
                          thickness: 2,
                          height: 1,
                        ),
                        SizedBox(height: 14),
                        // Confirm Password
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text("Confirm Password",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFAEAEAE),
                              )),
                        ),
                        SizedBox(height: 14),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Color(0xffF4F5F7),
                              hintText: 'Confirm Password',
                              hintStyle: TextStyle(
                                  color: Color(0xff7A869A), fontSize: 12),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide:
                                      BorderSide(color: Colors.transparent)),
                              suffix: Icon(Amicons.remix_eye_fill,
                                  color: Color(0xff979797)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide:
                                      BorderSide(color: Colors.transparent))),
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
