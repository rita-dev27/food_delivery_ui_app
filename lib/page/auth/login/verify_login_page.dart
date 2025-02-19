import 'package:flutter/material.dart';
import 'package:flutter_project_1/page/auth/login/widgets/image_texttile.dart';
import 'package:flutter_project_1/page/auth/login/widgets/custom_button.dart';
import 'package:flutter_project_1/page/home/home_page.dart';
import 'package:pinput/pinput.dart';

class VerifyLoginPage extends StatelessWidget {
  const VerifyLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            children: [
              SizedBox(
                height: 58,
                width: double.infinity,
              ),
              ImageTextTileWidget(
                  image: 'assets/image/cook_1.jpg',
                  heading: 'Verify your number',
                  title: 'We have just sent a code to ',
                  subtitle: '+12025550132',
                  highlightedsubtitle: ''),
              SizedBox(height: 24),
              Pinput(
                showCursor: true,
                cursor: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 2,
                    width: 35,
                    decoration: BoxDecoration(
                      color: Color(0xffEF9F27),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                defaultPinTheme: PinTheme(
                  width: 65,
                  height: 65,
                  textStyle: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(30, 60, 87, 1),
                      fontWeight: FontWeight.w600),
                  decoration: BoxDecoration(
                    color: Color(0xffF4F5F7),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              SizedBox(height: 40),
              CustomButtonWidget(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                      (route) => false,
                    );
                  },
                  color: Color(0xffEF9F27),
                  title: 'Next'),
              SizedBox(height: 16),
              CustomButtonWidget(
                onPressed: () {},
                color: Color(0xffF4F5F7),
                title: 'Send again',
                textcolor: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
