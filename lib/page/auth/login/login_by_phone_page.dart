import 'package:amicons/amicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_1/page/auth/login/verify_login_page.dart';
import 'package:flutter_project_1/page/auth/login/widgets/image_texttile.dart';
import 'package:flutter_project_1/page/auth/login/widgets/custom_button.dart';

class LoginByPhonePage extends StatelessWidget {
  const LoginByPhonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Amicons.remix_arrow_left_s,
              color: Colors.black,
            )),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 35),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 58),
              ImageTextTileWidget(
                  image: 'assets/image/cook_1.jpg',
                  heading: 'Get started with Cook',
                  title: 'Enter your phone number',
                  subtitle: '',
                  highlightedsubtitle: ''),
              SizedBox(height: 24),
              Container(
                padding:
                    EdgeInsets.only(top: 12, left: 16, right: 16, bottom: 0),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xffF4F5F7),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Phone Number',
                      style: TextStyle(color: Color(0xffC1C7D0)),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        suffix: Icon(Amicons.lucide_circle_check),
                        prefixIcon: Container(
                          width: 20,
                          child: Center(
                            child: Text(
                              '+1',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                        hintText: '202 555 0132',
                        hintStyle: TextStyle(color: Color(0xff7A869A)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.transparent)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(color: Colors.transparent)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              CustomButtonWidget(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => VerifyLoginPage()),
                      (route) => false,
                    );
                  },
                  color: Color(0xffEF9F27),
                  title: 'Next'),
              SizedBox(height: 24)
            ],
          ),
        ),
      )),
    );
  }
}
